.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:J = 0x1388L

.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private boot_filter:Landroid/content/IntentFilter;

.field private filter:Landroid/content/IntentFilter;

.field private filter2:Landroid/content/IntentFilter;

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private isGalaxyViewUSBConnected:Z

.field private isUSBConnected:Z

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackagesFromConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mChnAppsBundling:Z

.field private mChnSolDeactivateInScreenOn:Z

.field private mChnSolDeactivateInUSB:Z

.field private mChnSolEnable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDeltaFromTriggers:J

.field private mDefaultIntervalInChn:J

.field private mEmailPid:I

.field private mEmailUid:I

.field private final mExtraWhiteListPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver2:Landroid/content/BroadcastReceiver;

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private final mLockSuspiciousTagSet:Ljava/lang/Object;

.field private final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field private final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field private final mLockUserApps:Ljava/lang/Object;

.field private mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

.field private mNextSlotInChn:J

.field private mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSCPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

.field private mScreenOffTime:J

.field mSuspiciousTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuspiciousTagSetFromApi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuspiciousTagSetFromSCPM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestFileObserver:Landroid/os/FileObserver;

.field mUserAppTagSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pm:Landroid/content/pm/PackageManager;

.field preloadedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt;Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    const-wide/32 v2, 0x1b77400

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    iput-wide v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->initializeFromConfigFile()V

    aget-object v5, v3, v1

    const-string/jumbo v6, "whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    nop

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v5, v3, v1

    const-string v6, "blacklist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    nop

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.sec.spp.push"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.sec.chaton"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.facebook.katana"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.twitter.android"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.facebook.orca"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.kakao.talk"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.google.android.apps.plus"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.mobilesrepublic.appygeek"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string/jumbo v5, "mnn.Android"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v5, "com.google.android.apps.maps"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSyncBlackList()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSync3PlusBlackList()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    :cond_5
    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v5, "com.samsung.location"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    nop

    :goto_6
    move v0, v1

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const-string v1, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<TargetPackages> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v0, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt;->isAppSync3PlusTarget(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mChnAppsBundling = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_a
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_b
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSCPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMBroadcastReceiver;

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.pages.app"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.appmanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.facebook.system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.instagram.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.skype.raider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.microsoft.skydrive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v1, "com.samsung.android.opencalendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :goto_7
    nop

    :goto_8
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doTest()V

    :cond_d
    const-string v0, "AlarmManagerEXT"

    const-string v1, "SyncScheduler created "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getUserIdFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/os/FileObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mMultiUserMgr:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousPolicy(Landroid/content/Context;)V

    return-void
.end method

.method private addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p1

    :try_start_0
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private adjustAlarmForChinaApplication(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJ)Z
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v2, 0x1b77400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_0

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_0

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_9

    :cond_0
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    const-string v0, "AlarmManagerEXT"

    const-string v1, "XXX:: Control China Apps on"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-wide v1, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v3, v13, :cond_1

    move-wide v3, v11

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p3

    :goto_0
    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mChn_setTime T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_2
    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v4, :cond_3

    iget-object v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "null"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", INT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "AlarmManagerEXT"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isSuspiciousAlarm()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    iget-object v1, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v8, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    return v13

    :cond_5
    iget-wide v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    iget-wide v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_6

    const-wide/16 v0, 0x1

    goto :goto_2

    :cond_6
    move-wide v0, v11

    :goto_2
    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_7
    invoke-direct {v8, v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v0, v11

    if-lez v0, :cond_8

    iget-wide v0, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :cond_8
    return v13

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    add-long v7, v2, p6

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    const-string v7, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FPW_initialSlot 1= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-long v9, v4, p4

    int-to-long v6, v8

    add-long/2addr v9, v6

    goto :goto_1

    :cond_1
    move-wide v9, v2

    :goto_0
    cmp-long v6, v9, v4

    if-gez v6, :cond_2

    add-long v9, v9, p4

    goto :goto_0

    :cond_2
    :goto_1
    iput-wide v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    const-wide/16 v2, 0x0

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_4

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v7, v9

    div-long v7, v7, p4

    move-wide v12, v2

    iget-wide v2, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    mul-long v14, v7, p4

    add-long/2addr v14, v9

    sub-long/2addr v2, v14

    move-wide/from16 v16, v4

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    :cond_3
    mul-long v2, v7, p4

    goto :goto_2

    :cond_4
    move-wide v12, v2

    move-wide/from16 v16, v4

    :goto_2
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    add-long v5, v9, p6

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPW_changedSlot 2= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", gIntervalGcd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", numberOfSlot= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v2, p4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-long v4, v9, v2

    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget v6, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_6

    move-wide/from16 v6, p6

    goto :goto_3

    :cond_6
    const-wide/16 v6, 0x0

    :goto_3
    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    sub-long/2addr v4, v6

    div-long v4, v4, p4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long v4, v4, p4

    goto :goto_4

    :cond_7
    move-wide/from16 v4, p4

    :goto_4
    iput-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :cond_8
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iget-wide v5, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    add-long v5, v5, p6

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--->>> T:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_5

    :cond_9
    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_5

    :cond_a
    const-string/jumbo v7, "null"

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", INT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .locals 38

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v0, v9, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    move v10, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v15, v11, v13

    const-wide/16 v17, 0x0

    if-eqz v10, :cond_1

    move-wide v0, v15

    goto :goto_1

    :cond_1
    move-wide/from16 v0, v17

    :goto_1
    move-wide/from16 v19, v0

    const-wide v21, 0x7fffffffffffffffL

    const-wide v23, 0x7fffffffffffffffL

    move-wide/from16 v25, p2

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v2, 0x3e8

    add-long v30, v0, v2

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v0, v17

    if-lez v0, :cond_2

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_2
    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    :goto_2
    move-wide/from16 v32, v0

    const/16 v34, 0x0

    cmp-long v0, v25, v17

    if-eqz v0, :cond_17

    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v17

    if-nez v0, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-boolean v0, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    if-nez v0, :cond_5

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iget-object v2, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v17

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v0, v34

    goto :goto_5

    :cond_5
    :goto_3
    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object v0, v6

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v3, v9, :cond_6

    move-wide v3, v15

    goto :goto_4

    :cond_6
    move-wide/from16 v3, v17

    :goto_4
    sub-long v21, v1, v3

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const-wide/32 v34, 0x493e0

    rem-long v3, v3, v34

    cmp-long v3, v3, v17

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v25

    :cond_7
    :goto_5
    cmp-long v1, v25, v17

    if-eqz v1, :cond_8

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    rem-long v1, v25, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    iput-boolean v9, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    :cond_8
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v21, v1

    if-eqz v1, :cond_15

    add-long v21, v21, v19

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_9

    add-long v1, v13, v19

    sub-long v1, v30, v1

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    const/16 v27, 0x1

    :cond_9
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_b

    :cond_a
    const/4 v1, 0x1

    move/from16 v27, v1

    :cond_b
    cmp-long v1, v21, v30

    const-wide/16 v2, 0x1

    if-gtz v1, :cond_e

    iget-boolean v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    rem-long v4, p2, v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v25

    :cond_c
    sub-long v4, v30, v21

    div-long v4, v4, v25

    if-eqz v27, :cond_d

    :goto_6
    add-long v8, v4, v2

    mul-long v8, v8, v25

    add-long v8, v21, v8

    add-long v17, v30, v32

    cmp-long v1, v8, v17

    if-gtz v1, :cond_d

    add-long/2addr v4, v2

    goto :goto_6

    :cond_d
    mul-long v1, v25, v4

    add-long v1, v21, v1

    iput-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v1, v25

    goto :goto_a

    :cond_e
    cmp-long v1, v25, v17

    if-eqz v1, :cond_f

    sub-long v4, v21, v30

    div-long v28, v4, v25

    :cond_f
    sub-long v4, v30, v25

    add-long v36, v13, v19

    cmp-long v1, v4, v36

    if-gez v1, :cond_13

    add-long v4, v28, v2

    mul-long v4, v4, v25

    sub-long v4, v21, v4

    add-long v36, v13, v19

    cmp-long v1, v4, v36

    if-gez v1, :cond_13

    iget-wide v4, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v4, v17

    if-gtz v1, :cond_13

    iget v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    iget v4, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-ne v1, v4, :cond_10

    const-wide/16 v4, 0x2

    div-long v4, v25, v4

    sub-long v4, v30, v4

    add-long v17, v13, v19

    cmp-long v1, v4, v17

    if-gtz v1, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v27, :cond_12

    :goto_7
    mul-long v4, v25, v28

    sub-long v4, v21, v4

    add-long v8, v30, v32

    cmp-long v1, v4, v8

    if-ltz v1, :cond_11

    add-long v28, v28, v2

    goto :goto_7

    :cond_11
    mul-long v1, v25, v28

    sub-long v1, v21, v1

    iput-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto :goto_9

    :cond_12
    iput-boolean v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto :goto_9

    :cond_13
    :goto_8
    add-long v28, v28, v2

    mul-long v1, v25, v28

    sub-long v1, v21, v1

    iput-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_9
    move-wide/from16 v1, v25

    move-wide/from16 v4, v28

    :goto_a
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " next: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", unit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", C: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", WL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-wide/from16 v25, v1

    move-wide/from16 v28, v4

    goto :goto_b

    :cond_15
    const-string v1, "AlarmManagerEXT"

    const-string v2, " next == MAX_VALUE"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_16

    iget-wide v1, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v3, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    rem-long/2addr v1, v3

    cmp-long v1, v1, v17

    if-eqz v1, :cond_16

    iput-boolean v8, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    :cond_16
    :goto_b
    return-void

    :cond_17
    :goto_c
    return-void
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .locals 8

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    move-object v2, v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt$1;->$SwitchMap$com$android$server$AppSyncWrapper$SET_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/AppSyncWrapper$SET_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    monitor-enter p1

    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return v0
.end method

.method private doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p3

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) ---------< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   (AppSync) ---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doTest()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AlarmManagerEXT"

    const-string v2, "No exist test interface file : /data/system/app_sync_log_enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;

    const-string v2, "/data/system/app_sync_log_enable"

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 3

    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->containsPackageAsUser(Lcom/android/server/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getUserIdFromTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "unknown"

    return-object v1

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private initializeFromConfigFile()V
    .locals 15

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v1, "initializeFromConfigFile "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;

    const-string v2, "/data/misc/lpnet/lpnetConfig"

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "APPSYNC_INIT"

    const-string/jumbo v5, "enableChnSolution"

    iget-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    const-string v4, "APPSYNC_INIT"

    const-string v5, "DeactivateInScreenOn"

    iget-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    const-string v4, "APPSYNC_INIT"

    const-string v5, "DeactivateInUSB"

    iget-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    const-wide/16 v4, 0x0

    const-string v6, "APPSYNC_INIT"

    const-string/jumbo v7, "syncInterval"

    iget-wide v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x3e8

    if-ltz v8, :cond_1

    const-wide/16 v11, 0xe10

    cmp-long v8, v4, v11

    if-gtz v8, :cond_1

    mul-long v11, v4, v9

    iput-wide v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    goto :goto_0

    :cond_1
    const-string v8, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Out of bounds, Allowed Values 1s ~ 3600s, Setting syncInterval : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v4, 0x0

    const-string v8, "APPSYNC_INIT"

    const-string v11, "deltaFromTriggers"

    iget-wide v12, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-virtual {v0, v8, v11, v12, v13}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v6

    const-wide/32 v7, 0x186a0

    const-wide/16 v11, 0x4b

    if-ltz v6, :cond_2

    iget-wide v13, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    mul-long/2addr v13, v11

    div-long/2addr v13, v7

    cmp-long v6, v4, v13

    if-gez v6, :cond_2

    mul-long/2addr v9, v4

    iput-wide v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    goto :goto_1

    :cond_2
    const-string v6, "AlarmManagerEXT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out of bounds, Allowed Values 1s ~ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    mul-long/2addr v13, v11

    div-long/2addr v13, v7

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "s, Setting deltaFromTriggers : "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v6, "APPSYNC_INIT"

    const-string v7, "BlackList"

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_2

    :cond_4
    const-string v6, "APPSYNC_INIT"

    const-string v7, "BlackList3P"

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_3

    :cond_6
    const-string v6, "APPSYNC_INIT"

    const-string v7, "ExtraWhiteList"

    invoke-virtual {v0, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mChnSolEnable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mChnSolDeactivateInScreenOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDefaultIntervalInChn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDefaultDeltaFromTriggers : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stringBlackList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stringExtraWhitelist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException on Parsing Config FILE :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action.time_tick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    return v2
.end method

.method private isIgnorePackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSystemApplication(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTargetApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isSystemApplication(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private queryAccounts()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v7, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_4
    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<TargetPackages> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    goto :goto_6

    :cond_8
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<AccPackages> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    :goto_6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .locals 19

    move-object/from16 v0, p0

    const-wide/32 v1, 0x1b77400

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v10, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    move v10, v11

    iget-wide v11, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_1

    move-wide v15, v13

    goto :goto_2

    :cond_1
    move-wide v15, v6

    :goto_2
    add-long/2addr v11, v15

    cmp-long v15, v4, v11

    if-gez v15, :cond_2

    move-wide/from16 v17, v4

    iget-wide v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_3

    iget-wide v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v4

    :cond_3
    :goto_3
    move-wide/from16 v4, v17

    goto :goto_0

    :cond_4
    move-wide/from16 v17, v4

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GCD_NEW("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "):"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;IZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    if-ne v3, p2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/IAlarmListener;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/IAlarmListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method private removePackage(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p1

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackage(Ljava/lang/String;Ljava/util/Collection;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private swapPackage(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .locals 35

    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v15, v13, v15

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v19, 0x0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/32 v26, 0x1b77400

    cmp-long v9, v9, v26

    if-gtz v9, :cond_d

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/32 v26, 0x493e0

    cmp-long v9, v9, v26

    if-ltz v9, :cond_d

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v28, v11

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    rem-long v9, v9, v26

    const-wide/16 v26, 0x0

    cmp-long v9, v9, v26

    if-nez v9, :cond_c

    iget-boolean v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v9, :cond_c

    if-nez p5, :cond_1

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual {v2, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v2, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v28

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    :cond_2
    iget v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v10, 0x1

    if-gt v9, v10, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iget-wide v10, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    if-eqz v9, :cond_4

    move-wide/from16 v21, v26

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v15

    :goto_3
    add-long v10, v10, v21

    move/from16 v29, v9

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    add-long v21, v10, v21

    cmp-long v9, v13, v21

    if-gez v9, :cond_c

    if-eqz v1, :cond_6

    cmp-long v9, v10, v17

    if-gez v9, :cond_5

    move-wide/from16 v17, v10

    move-object v9, v2

    move-wide/from16 v30, v13

    move-object/from16 v10, v25

    move-object/from16 v11, v28

    goto/16 :goto_b

    :cond_5
    move-wide/from16 v33, v7

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    goto/16 :goto_6

    :cond_6
    invoke-static/range {p3 .. p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    iget-wide v12, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    move-wide/from16 v33, v7

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_7

    cmp-long v7, v10, v3

    if-gez v7, :cond_e

    move-wide v3, v10

    move-object v7, v2

    move-object v10, v7

    move-object/from16 v9, v24

    goto/16 :goto_8

    :cond_7
    cmp-long v7, v12, p3

    if-nez v7, :cond_8

    cmp-long v7, v10, v5

    if-gez v7, :cond_e

    move-wide v5, v10

    move-object v7, v2

    move-object v11, v7

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto :goto_9

    :cond_8
    cmp-long v7, v12, v26

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    rem-long v7, v12, v7

    cmp-long v7, v7, v26

    if-nez v7, :cond_b

    cmp-long v7, v12, v19

    if-ltz v7, :cond_b

    cmp-long v7, v12, v19

    if-nez v7, :cond_a

    cmp-long v7, v10, v33

    if-gez v7, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v14, v32

    goto :goto_5

    :cond_a
    :goto_4
    move-wide v7, v10

    move-object v14, v2

    move-wide/from16 v33, v7

    :goto_5
    move-wide v7, v12

    move-wide/from16 v19, v7

    move-object v12, v14

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v28

    goto :goto_a

    :cond_b
    cmp-long v7, v10, v17

    if-gez v7, :cond_e

    move-wide v7, v10

    nop

    move-object v9, v2

    move-wide/from16 v17, v7

    goto :goto_7

    :cond_c
    move-wide/from16 v33, v7

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    goto :goto_6

    :cond_d
    move-wide/from16 v33, v7

    move-object/from16 v28, v11

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    :cond_e
    :goto_6
    move-object/from16 v9, v24

    :goto_7
    move-object/from16 v10, v25

    :goto_8
    move-object/from16 v11, v28

    :goto_9
    move-object/from16 v12, v32

    :goto_a
    move-wide/from16 v7, v33

    :goto_b
    move-object/from16 v2, v23

    move-wide/from16 v13, v30

    goto/16 :goto_1

    :cond_f
    move-wide/from16 v33, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v28, v11

    move-object/from16 v32, v12

    move-wide/from16 v30, v13

    if-eqz v32, :cond_10

    move-object/from16 v9, v32

    move-object/from16 v24, v9

    :cond_10
    if-eqz v28, :cond_11

    move-object/from16 v24, v28

    :cond_11
    if-eqz v25, :cond_12

    move-object/from16 v24, v25

    :cond_12
    return-object v24
.end method

.method private updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    return-void
.end method

.method private updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .locals 8

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_2
    move-wide v5, v1

    :goto_0
    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated expectedWhen (T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerServiceExt;->access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v6

    goto :goto_2

    :cond_4
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v4, p1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move-wide/from16 v5, p2

    iput-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_1

    :cond_0
    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v7

    :goto_1
    iput-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    new-instance v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget v10, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    iget-wide v11, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v13, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-object v15, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v9, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listenerTag:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v30, v0

    iget v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->flags:I

    move/from16 v31, v0

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v32, v0

    iget v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move/from16 v33, v0

    iget-object v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    move-object/from16 v22, v9

    move-object v9, v1

    move-object/from16 v21, v15

    move-wide v15, v7

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-object/from16 v23, v29

    move-object/from16 v24, v30

    move/from16 v25, v31

    move-object/from16 v26, v32

    move/from16 v27, v33

    move-object/from16 v28, v0

    invoke-direct/range {v9 .. v28}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    move-object v0, v1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] Updating the alarm... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    return-void

    :cond_2
    move-object v3, v0

    goto/16 :goto_0

    :cond_3
    move-object v3, v0

    return-void
.end method

.method private updateSuspiciousPolicy(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->isSCPMAvailable()Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AlarmManagerEXT"

    const-string v4, "SCPM is unavailable now"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-wide v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousTags()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->getSuspiciousTimeLimitFromSCPM()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->getSuspiciousTagFromSCPM()Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    :goto_0
    sput-wide v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[POLICY] SUSPICIOUS THRESHOLD TIME : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-direct {p0, v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateSuspiciousTags()V

    return-void

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private updateSuspiciousTags()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method


# virtual methods
.method public disableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removePackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    :goto_0
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 14

    move-object v7, p0

    move-object v8, p1

    const/4 v9, 0x0

    const-string v0, "  <AppSync3 Whitelist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   (AppSync) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    const-string v6, "AppSync3+ Packages"

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    const-string v6, "Suspicious Packages"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    const-string v6, "Suspicious Packages From API"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    iget-object v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    const-string v6, "Suspicious Packages From SCPM"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDumpCollectionWithLock(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspicious Threshold Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "[millis]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v0

    add-int/2addr v9, v0

    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  (AppSync) ### "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " added ###"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  (AppSync) Processing time (avg/max) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "(UID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") [ms]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iget-wide v10, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v12, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v12, v1, :cond_4

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_4
    move-wide v12, v3

    :goto_3
    add-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Landroid/text/format/Time;->set(J)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    [AppSync] T:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", INT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GCD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "  <AppSync3 Blacklist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   (AppSync) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v0, "  <AppSync3p Blacklist>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   (AppSync) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "   (AppSync) ---------"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_7
    :goto_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Fixed Wakeups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public doGarbageCollection(J)V
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    const-string v0, "AlarmManagerEXT"

    const-string v5, "<AppSync3 Whitelist>"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(AppSync) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "AlarmManagerEXT"

    const-string v6, "(AppSync) ---------"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v0

    add-int/2addr v4, v0

    :cond_2
    const-string v0, "AlarmManagerEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(AppSync) ### "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " added ###"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    const-string v0, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%.2f"

    new-array v10, v7, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "(UID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ") [ms]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_6

    iget v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v12, v7, :cond_4

    move v12, v7

    goto :goto_3

    :cond_4
    move v12, v6

    :goto_3
    iget-wide v13, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    if-eqz v12, :cond_5

    const-wide/16 v17, 0x0

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v9

    :goto_4
    add-long v13, v13, v17

    iget-wide v5, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v17, 0x3

    mul-long v5, v5, v17

    add-long/2addr v5, v13

    cmp-long v5, v5, v2

    if-gez v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-wide v12, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v6, v7, :cond_7

    const-wide/16 v15, 0x0

    goto :goto_5

    :cond_7
    move-wide v15, v9

    :goto_5
    add-long/2addr v12, v15

    invoke-virtual {v5, v12, v13}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v6

    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[AppSync] T:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v14, :cond_8

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_6

    :cond_8
    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v14, :cond_9

    iget-object v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_6

    :cond_9
    const-string/jumbo v14, "null"

    :goto_6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", INT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v11, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    nop

    :goto_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " GCD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    :cond_d
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public enableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addPackageWithLock(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)V

    const/4 v1, 0x1

    return v1
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v3, v3, p3

    if-eqz v3, :cond_0

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x1f4

    cmp-long v3, v3, v7

    if-gez v3, :cond_1

    :cond_0
    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-eq v3, v4, :cond_1

    const-string v1, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
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

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->queryAccounts()V

    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeRepeatingAlarm(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeRepeatingAlarm(Landroid/app/IAlarmListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/IAlarmListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

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

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

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

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;II)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .locals 55

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    :try_start_0
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v2, "schedulingRepeatingAlarms exception appsync"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    monitor-exit v1

    return-wide v2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v10, v0

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-direct {v0, v9, v1}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V

    move-object v12, v0

    iget-wide v13, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    const-wide/16 v15, -0x1

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide/from16 v17, v0

    iget v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    :goto_2
    move-wide/from16 v21, v2

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v24, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    if-nez v0, :cond_4

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v0, v0, v19

    cmp-long v2, v0, v10

    if-gez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_3
    move-wide v2, v0

    :goto_3
    move-wide v4, v0

    goto :goto_5

    :cond_4
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    cmp-long v2, v2, v19

    if-gez v2, :cond_5

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    goto :goto_4

    :cond_5
    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v2, v2, v19

    :goto_4
    goto :goto_3

    :goto_5
    invoke-virtual {v12, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->checkSuspiciousAlarm(J)V

    const-wide/32 v0, 0x325aa0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_6

    const-wide/32 v0, 0xea60

    goto :goto_6

    :cond_6
    const-wide/16 v0, 0x2710

    :goto_6
    move-wide v6, v0

    long-to-double v0, v4

    long-to-double v10, v6

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    mul-long v10, v0, v6

    long-to-double v0, v2

    move-wide/from16 v28, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    mul-long v17, v0, v6

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    :cond_7
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    sub-long v21, v0, v21

    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    move/from16 v28, v1

    if-eqz v28, :cond_2c

    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    if-nez v1, :cond_9

    :try_start_4
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "AlarmManagerEXT"

    const-string v3, "Skip to sched alarm : The alarm gonna be controlled by ASB"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-wide v13

    :catchall_1
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v4

    move-wide/from16 v39, v6

    goto/16 :goto_17

    :cond_9
    :try_start_5
    iget-object v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-nez v1, :cond_a

    move-wide/from16 v30, v4

    :try_start_6
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-wide v3

    :catchall_2
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    :goto_7
    move-wide/from16 v29, v30

    goto/16 :goto_17

    :cond_a
    move-wide/from16 v30, v4

    :try_start_7
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-direct {v8, v1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    iget-boolean v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    const-wide/32 v4, 0x186a0

    const-wide/32 v32, 0x1b77400

    const-wide/32 v34, 0x493e0

    if-ne v1, v3, :cond_1a

    const-wide/16 v36, 0x0

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    if-nez v1, :cond_12

    :try_start_8
    const-string v1, "com.samsung.android.email.sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_b
    cmp-long v1, v10, v32

    if-gtz v1, :cond_11

    cmp-long v1, v10, v34

    if-ltz v1, :cond_11

    rem-long v3, v10, v4

    const-wide/16 v26, 0x0

    cmp-long v1, v3, v26

    if-nez v1, :cond_11

    rem-long v3, v10, v34

    cmp-long v1, v3, v26

    if-nez v1, :cond_d

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    cmp-long v1, v3, v26

    if-lez v1, :cond_c

    :try_start_9
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    goto :goto_8

    :cond_c
    :try_start_a
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v38, v0

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-wide/from16 v39, v6

    :try_start_b
    iget-wide v5, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v3

    :goto_8
    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto :goto_9

    :cond_d
    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    :goto_9
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_e

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v0

    move-wide/from16 v36, v0

    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v3, v36, v0

    if-ltz v3, :cond_f

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_f

    iput-wide v10, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    :cond_f
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v17, v0

    if-gez v0, :cond_10

    const-wide/16 v36, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_a

    :cond_10
    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    goto/16 :goto_d

    :cond_11
    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    const/4 v0, 0x1

    :goto_a
    move v7, v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    move-wide/from16 v29, v30

    goto/16 :goto_17

    :cond_12
    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    const/4 v0, 0x1

    :goto_b
    :try_start_c
    iget v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-nez v1, :cond_13

    :try_start_d
    iget-object v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    iput v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v23, v2

    goto/16 :goto_7

    :cond_13
    :goto_c
    :try_start_e
    iget v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v1, :cond_14

    :try_start_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_14
    :try_start_10
    iget-object v1, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-static {v1, v3, v4}, Lcom/android/server/AlarmManagerServiceExt;->access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_18

    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v3, -0x2

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    const-wide/16 v41, 0x2

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v23, :cond_15

    :try_start_11
    const-string v0, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Email) ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-wide/16 v3, -0x2

    cmp-long v0, v5, v3

    if-nez v0, :cond_16

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "com.android.email.intent.action.ACTION_RESET_IDLE"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    long-to-double v3, v10

    const-wide v44, 0x41124f8000000000L    # 300000.0

    div-double v3, v3, v44

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long v3, v3, v34

    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v23, v2

    move-wide/from16 v36, v3

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    goto :goto_d

    :cond_16
    const-wide/16 v3, -0x2

    cmp-long v0, v5, v3

    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    :try_start_12
    array-length v0, v1

    int-to-long v3, v0

    const-wide/16 v44, 0x2

    rem-long v3, v3, v44

    const-wide/16 v26, 0x0

    cmp-long v0, v3, v26

    if-nez v0, :cond_17

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object v0, v1

    move-object/from16 v46, v7

    const/4 v7, 0x1

    move-object v1, v8

    move-object/from16 v23, v2

    move-wide/from16 v43, v3

    move-wide v2, v5

    move-wide/from16 v47, v5

    move-wide/from16 v29, v30

    move-wide/from16 v4, v43

    move-object v6, v0

    :try_start_13
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide v0, v1

    move-wide/from16 v36, v0

    goto :goto_d

    :cond_17
    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    goto :goto_d

    :cond_18
    move v7, v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    :goto_d
    const-wide/16 v0, 0x0

    cmp-long v2, v36, v0

    if-ltz v2, :cond_19

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide v15, v0

    :cond_19
    goto :goto_f

    :catchall_5
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v30

    goto/16 :goto_17

    :cond_1a
    move-object/from16 v38, v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    move-wide/from16 v29, v30

    const/4 v7, 0x1

    cmp-long v0, v10, v32

    if-gtz v0, :cond_1d

    cmp-long v0, v10, v34

    if-ltz v0, :cond_1d

    rem-long v0, v10, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1b

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v0

    move-wide v15, v0

    :cond_1b
    const-wide/16 v0, 0x0

    cmp-long v2, v15, v0

    if-lez v2, :cond_1d

    iput-wide v10, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1c

    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_e

    :cond_1c
    iget-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v2, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v0

    :goto_e
    iput-wide v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :cond_1d
    :goto_f
    move-wide v1, v15

    :try_start_14
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    if-eqz v0, :cond_1e

    :try_start_15
    const-string v0, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TA] Periodicity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catchall_6
    move-exception v0

    move-wide v15, v1

    goto/16 :goto_17

    :cond_1e
    :goto_10
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1f

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v34

    if-ltz v0, :cond_1f

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v32

    if-gtz v0, :cond_1f

    const-wide/16 v4, 0x0

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_15

    :cond_1f
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_29

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v34

    if-ltz v0, :cond_21

    iget-wide v4, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v0, v4, v32

    if-gtz v0, :cond_21

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    move-wide/from16 v49, v4

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v5, v49

    invoke-direct {v8, v5, v6, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_20

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const/4 v0, 0x0

    invoke-direct {v8, v12, v3, v4, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto :goto_11

    :cond_20
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const/4 v0, 0x0

    invoke-direct {v8, v12, v3, v4, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    :goto_11
    const-wide/16 v5, 0x0

    goto :goto_12

    :cond_21
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_22

    cmp-long v0, v1, v32

    if-gtz v0, :cond_22

    cmp-long v0, v1, v34

    if-ltz v0, :cond_22

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-direct {v8, v3, v4, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-direct {v8, v12, v3, v4, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    :cond_22
    :goto_12
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v0, :cond_24

    nop

    iget v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v0, v7, :cond_23

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v3, v3, v21

    goto :goto_13

    :cond_23
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_13
    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v5, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v3, v5

    iput-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    :cond_24
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_25
    invoke-direct {v8, v9, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_27

    :cond_26
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v5, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v5, v7, :cond_28

    const-wide/16 v51, 0x0

    goto :goto_14

    :cond_28
    move-wide/from16 v51, v21

    :goto_14
    add-long v3, v3, v51

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---> T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    iget-wide v7, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", INT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v5, "AlarmManagerEXT"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_15

    :catchall_7
    move-exception v0

    move-wide v15, v1

    move-object/from16 v8, p0

    goto/16 :goto_17

    :cond_29
    :goto_15
    :try_start_17
    iget-wide v3, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide v13, v3

    monitor-exit v23
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    sub-double v3, v3, v24

    move-object/from16 v8, p0

    iget-wide v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v53, v1

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    long-to-double v0, v0

    mul-double/2addr v5, v0

    add-double/2addr v5, v3

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v15, 0x1

    add-long/2addr v0, v15

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    long-to-double v0, v0

    div-double/2addr v5, v0

    iput-wide v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    cmpl-double v0, v3, v0

    if-lez v0, :cond_2a

    iput-wide v3, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    iget-object v0, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    :cond_2a
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (SyncScheduler) Processed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " (avg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") [ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-wide v13

    :catchall_8
    move-exception v0

    move-wide/from16 v53, v1

    move-object/from16 v8, p0

    goto :goto_16

    :catchall_9
    move-exception v0

    move-wide/from16 v53, v1

    :goto_16
    move-wide/from16 v15, v53

    goto :goto_17

    :catchall_a
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v39, v6

    move-wide/from16 v29, v30

    goto :goto_17

    :cond_2c
    move-object/from16 v38, v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v4

    move-wide/from16 v39, v6

    :try_start_18
    invoke-direct {v8, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object v1, v8

    move-object v2, v9

    move-object v3, v12

    move-wide/from16 v4, v21

    move-wide/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForChinaApplication(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-wide v1, v12, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v23

    return-wide v1

    :cond_2d
    monitor-exit v23

    return-wide v13

    :catchall_b
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v29, v4

    move-wide/from16 v39, v6

    :goto_17
    monitor-exit v23
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_17
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput p2, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    iput-wide p3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    iget-boolean v3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    monitor-exit v2

    return-void

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 27

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v1, 0x0

    move v11, v1

    :try_start_0
    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isIgnoreAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManagerEXT"

    const-string/jumbo v3, "updateExplicitRepeatingAlarms exception appsync"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->getTarget(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_2
    move/from16 v26, v11

    move/from16 v25, v12

    goto/16 :goto_4

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AlarmManagerEXT"

    const-string v1, "Skip to resched alarm : The alarm gonna be controlled by ASB"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v11

    :cond_4
    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    move v11, v0

    monitor-exit v2

    :cond_5
    move/from16 v26, v11

    move/from16 v25, v12

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isChinaControlAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v4, 0x1b77400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    sget-boolean v4, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x2710

    :goto_2
    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_7

    iget-object v1, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_7
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-direct {v1, v10, v2}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService;)V

    move-object v13, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v18, v14, v16

    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v1, v16, v1

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v1, v3

    const-wide/16 v7, 0x1

    add-long v20, v7, v1

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    mul-long v3, v3, v20

    add-long/2addr v1, v3

    iput-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v5, 0x1

    if-gt v1, v5, :cond_8

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v1, v1, v18

    goto :goto_3

    :cond_8
    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_3
    iput-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    iget-wide v1, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-wide/from16 v22, v1

    move-object v1, v9

    move-object v2, v13

    move/from16 v24, v5

    move-wide/from16 v5, v22

    move/from16 v26, v11

    move/from16 v25, v12

    move-wide v11, v7

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :cond_9
    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v1, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v3, v13, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v1, v10, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;)V

    return v24

    :goto_4
    return v26

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v7, v3, v5

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_2

    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    goto :goto_1

    :cond_2
    iget-wide v11, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_1
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v13, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v13, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v13, v5, v13

    move/from16 v17, v2

    move-wide/from16 v18, v3

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v13, v2

    const-wide/16 v2, 0x1

    add-long/2addr v13, v2

    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    mul-long v20, v13, v11

    add-long v2, v2, v20

    iput-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    if-eqz v2, :cond_3

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    const-wide/16 v15, 0x0

    cmp-long v2, v3, v15

    if-gtz v2, :cond_4

    :cond_3
    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    :cond_4
    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-wide/from16 v22, v5

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    iget-wide v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    rem-long/2addr v2, v4

    const-wide/16 v15, 0x0

    cmp-long v2, v2, v15

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v10, v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_2

    :cond_5
    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-direct {v0, v10, v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    :goto_2
    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v2, :cond_a

    iput-boolean v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    const/4 v2, 0x1

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_3
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_6

    move-wide/from16 v5, v18

    goto :goto_4

    :cond_6
    move-wide/from16 v5, v22

    :goto_4
    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v3, v11

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_3

    :cond_7
    nop

    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_8

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long/2addr v3, v7

    goto :goto_5

    :cond_8
    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    :goto_5
    iput-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    nop

    iget v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_9

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v3, v7

    goto :goto_6

    :cond_9
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_6
    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v5, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v3, v5

    iput-wide v3, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    const-wide/16 v3, 0x1

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    goto :goto_7

    :cond_a
    move/from16 v2, v17

    :goto_7
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :cond_b
    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExpectedWhen(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    :cond_c
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_d
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iget-wide v4, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v6, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v9, 0x1

    if-gt v6, v9, :cond_e

    goto :goto_8

    :cond_e
    move-wide v15, v7

    :goto_8
    add-long/2addr v4, v15

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--->> T:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    if-eqz v9, :cond_f

    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    goto :goto_9

    :cond_f
    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    if-eqz v9, :cond_10

    iget-object v9, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    goto :goto_9

    :cond_10
    const-string/jumbo v9, "null"

    :goto_9
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v2

    move-object/from16 v25, v3

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", INT:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") count:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_11
    move/from16 v24, v2

    :goto_a
    move/from16 v17, v24

    goto :goto_b

    :cond_12
    move-wide/from16 v22, v5

    goto :goto_b

    :cond_13
    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v22, v5

    :goto_b
    return v17
.end method
