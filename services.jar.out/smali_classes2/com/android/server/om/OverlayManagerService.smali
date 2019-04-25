.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private mInitCompleteSignal:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mResetSettings:Z

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "overlays.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "overlays"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    new-instance v3, Lcom/android/server/om/IdmapManager;

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v3, p2, v0}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;)V

    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$mX9VnR-_2XOwgKo9C81uZcpqETM;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$mX9VnR-_2XOwgKo9C81uZcpqETM;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    const-string v2, "Init OverlayManagerService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->readResetSettingsValue()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;Z)V

    return-void
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private initIfNeeded()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v6, :cond_1

    :cond_0
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/om/OverlayManagerService;)V
    .locals 14

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v9, p0, v7}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;

    invoke-direct {v9, p0, v7}, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v11, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    const-string/jumbo v2, "overlay"

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v2, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, v2, p0}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$schedulePersistSettings$1(Lcom/android/server/om/OverlayManagerService;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    const-string v1, "Writing overlay settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v3, "OverlayManager"

    const-string v4, "failed to persist overlay state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private readResetSettingsValue()V
    .locals 10

    const-string/jumbo v0, "reset_setting"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v7, 0x4000

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    nop

    :try_start_2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, v7

    move-object v4, v2

    const-string/jumbo v7, "reset_setting"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v6}, Lcom/android/server/om/OverlayManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v3, v5}, Lcom/android/server/om/OverlayManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catchall_0
    move-exception v7

    move-object v8, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v8

    move-object v9, v4

    move-object v4, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v9

    :goto_0
    :try_start_6
    invoke-static {v2, v6}, Lcom/android/server/om/OverlayManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v6

    move-object v2, v4

    move-object v4, v8

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move-object v4, v8

    goto :goto_1

    :catchall_3
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_1
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_2
    :try_start_8
    invoke-static {v3, v5}, Lcom/android/server/om/OverlayManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private restoreSettings()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v1}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_3

    aget v8, v6, v5

    invoke-static {v4, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_2

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-static {v2, v1}, Lcom/android/server/om/OverlayManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_5
    invoke-static {v2, v1}, Lcom/android/server/om/OverlayManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v1

    :try_start_6
    const-string v2, "OverlayManager"

    const-string v3, "failed to restore overlay state"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private schedulePersistSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;Z)V

    return-void
.end method

.method private updateAssets(ILjava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;Z)V

    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;Z)V

    return-void
.end method

.method private updateAssets(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZ)V

    return-void
.end method

.method private updateAssets(ILjava/util/List;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p3, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroid/content/om/SamsungThemeConstants;->immortalApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p1, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :try_start_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v6, "update-overlay"

    invoke-interface {v0, v2, v5, p1, v6}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    sget-object v5, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-virtual {v8, v7, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_2

    :try_start_3
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v10, "update-overlay"

    invoke-interface {v0, v7, v9, p1, v10}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_3
    goto :goto_2

    :cond_3
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_4
    :goto_4
    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    if-eqz p4, :cond_6

    :try_start_5
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, p1}, Landroid/app/ActivityManagerInternal;->scheduleApplicationInfoChanged(Ljava/util/List;ZI)V

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :cond_6
    invoke-interface {v0, p2, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :goto_5
    goto :goto_7

    :cond_7
    :goto_6
    nop

    :cond_8
    :goto_7
    return-void
.end method

.method private updateOverlayPaths(ILjava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    const-string v3, "Updating overlay assets"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    const-string v0, "android"

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v8, "android"

    invoke-virtual {v0, v8, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/om/OverlayInfo;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v10, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, v10, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    const-string v12, "/data/overlays/currentstyle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v19, v5

    goto/16 :goto_d

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getSamsungThemeTargetPackageNames(I)Ljava/util/List;

    move-result-object v0

    sget-boolean v4, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "OverlayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAssetsLocked for fwk, targets "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v9, v4

    :goto_3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    iget-object v11, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v4, "android"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_f

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "android"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v14, :cond_7

    if-eqz v6, :cond_6

    :try_start_4
    sget-object v14, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    goto/16 :goto_c

    :cond_6
    :goto_5
    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    goto/16 :goto_9

    :cond_7
    if-eqz v6, :cond_d

    const/4 v14, 0x0

    :try_start_5
    iget-object v15, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v15, v12, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_c

    const/16 v16, 0x0

    :goto_6
    move/from16 v17, v16

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v18, v4

    move/from16 v4, v17

    if-ge v4, v8, :cond_b

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/om/OverlayInfo;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v16, :cond_9

    move/from16 v19, v5

    :try_start_6
    iget-object v5, v8, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v8, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v20, v6

    :try_start_7
    const-string v6, "/data/overlays/currentstyle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v14, 0x1

    goto :goto_8

    :cond_8
    move/from16 v20, v6

    goto :goto_7

    :catchall_2
    move-exception v0

    move/from16 v20, v6

    goto/16 :goto_c

    :cond_9
    move/from16 v19, v5

    move/from16 v20, v6

    :cond_a
    :goto_7
    add-int/lit8 v16, v4, 0x1

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    goto :goto_6

    :cond_b
    move/from16 v19, v5

    move/from16 v20, v6

    goto :goto_8

    :cond_c
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    :goto_8
    if-eqz v14, :cond_e

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_d
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    :cond_e
    :goto_9
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v4, v12, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_4

    :cond_f
    move/from16 v19, v5

    move/from16 v20, v6

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v0, :cond_12

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v6, :cond_10

    const-string v6, "OverlayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> Updating overlay: target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " overlays=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v8, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    nop

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "OverlayManager"

    const-string v7, "Failed to change enabled overlays for %s user %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v8, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_11
    const/4 v11, 0x0

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    return-void

    :catchall_3
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    :goto_c
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    goto :goto_d

    :catchall_6
    move-exception v0

    move/from16 v19, v5

    :goto_d
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_d
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    const-string v1, "Wait for OverlayManagerService init"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateSystemUiContext()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    const-string v1, "Wait for OverlayManagerService init"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->access$100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android"

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
