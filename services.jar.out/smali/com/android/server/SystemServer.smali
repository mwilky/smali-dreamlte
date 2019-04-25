.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final COVER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cover.CoverManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030407

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRIENDS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.friends.FrsService"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PACM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.PACMService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SALES_CODE_CHANGED_FILE:Ljava/lang/String; = "/efs/imei/salesCodeChanged"

.field private static final SDP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.SdpManagerService$Lifecycle"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SEPUNION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sepunion.SemUnionMasterService"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIMA_KEYSTORE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final TYPE_TIMA_VERSION:I = -0xdffffe

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.WearConfigManagerService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final isMobilePaymentAllowed:Z = true

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field private ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mLedBackCoverService:Lcom/android/server/ledcovereditor/LedBackCoverService;

.field private mLedCoverEditorService:Lcom/android/server/ledcovereditor/LedCoverEditorService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

.field private mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field pkmService:Lcom/android/server/PKMService;

.field sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

.field safeModeValueForTheme:Z

.field private timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iput-object v0, p0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030407

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

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

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 4

    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "Hqm Service"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v2, "com.samsung.android.hqm.HqmManagerService"

    invoke-virtual {v1, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const-string v5, "HqmManagerService"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SystemServer"

    const-string/jumbo v3, "hqm.jar not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .locals 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;)V
    .locals 4

    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic lambda$startOtherServices$5(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/net/UrspService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v0, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x226

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "observing native crashes"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v5, "WebViewFactoryPreparation"

    const/4 v0, 0x0

    iget-boolean v6, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;

    invoke-direct {v7, v1}, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;-><init>(Lcom/android/server/SystemServer;)V

    const-string v8, "WebViewFactoryPreparation"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    :cond_0
    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1
    invoke-static/range {p1 .. p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v0

    const-string/jumbo v7, "starting System UI"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->startThemeService()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string/jumbo v7, "starting Theme Service"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_3
    const-string v0, "SystemServer"

    const-string v7, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkManagementService;->systemReady()V

    :cond_2
    const-string v0, "SystemServer"

    const-string v8, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string/jumbo v8, "making Network Managment Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    if-eqz v3, :cond_3

    nop

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    :cond_3
    move-object v8, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    :try_start_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v9, v0

    const-string/jumbo v9, "making IpSec Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    :goto_4
    nop

    :goto_5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p6, :cond_5

    :try_start_5
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v10, v0

    const-string/jumbo v10, "making Network Stats Service ready"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_5
    :goto_6
    nop

    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p7, :cond_6

    :try_start_6
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v11, v0

    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_6
    :goto_8
    nop

    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v11, v0

    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    :goto_a
    nop

    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeUrspServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p8, :cond_8

    :try_start_8
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/UrspService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v12, v0

    const-string/jumbo v12, "making ursp Service ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_8
    :goto_c
    nop

    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PackageManagerService waitForAppDataPrepared"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v6, :cond_9

    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v6, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x258

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p9, :cond_a

    :try_start_9
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v13, v0

    const-string v13, "Notifying Location Service running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_a
    :goto_e
    nop

    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const/4 v15, 0x0

    if-eqz p10, :cond_b

    :try_start_a
    const-string v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v13, "systemReady"

    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    aput-object v17, v3, v15

    const-class v17, Landroid/os/IBinder;

    const/16 v16, 0x1

    aput-object v17, v3, v16

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v2, v13, v15

    const/4 v14, 0x1

    aput-object p10, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v3, "SystemServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "making SLocation Service ready :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_b
    :goto_10
    nop

    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p11, :cond_c

    :try_start_b
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    move-object v13, v0

    const-string v13, "Notifying CountryDetectorService running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_c
    :goto_12
    nop

    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p12, :cond_d

    :try_start_c
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    move-object v14, v0

    const-string v14, "Notifying NetworkTimeService running"

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_d
    :goto_14
    nop

    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p13, :cond_e

    :try_start_d
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_16

    :catch_d
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying CommonTimeManagementService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_e
    :goto_16
    nop

    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p14, :cond_f

    :try_start_e
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_18

    :catch_e
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying InputManagerService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_f
    :goto_18
    nop

    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p15, :cond_10

    :try_start_f
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_1a

    :catch_f
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_10
    :goto_1a
    nop

    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p16, :cond_11

    :try_start_10
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_1c

    :catch_10
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying MediaRouterService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_11
    :goto_1c
    nop

    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "EmergencyModeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_11
    invoke-static/range {p1 .. p1}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_1e

    :catch_11
    move-exception v0

    move-object v3, v0

    const-string v3, "Notifying EmergencyModeService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p17, :cond_12

    :try_start_12
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_1f

    :catch_12
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying MmsService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_12
    :goto_1f
    nop

    :goto_20
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_13
    const-string/jumbo v0, "incident"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    :cond_13
    goto :goto_21

    :catch_13
    move-exception v0

    const-string v3, "Notifying incident daemon running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "mDNIe"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_14
    const-string v0, "SystemServer"

    const-string/jumbo v3, "mDNIe Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v3, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_14

    const-string v3, "SystemServer"

    const-string v4, "Mdnie Service does not exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_14
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object/from16 v18, v0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v15

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v4, "mDNIe"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    :goto_22
    goto :goto_23

    :catch_14
    move-exception v0

    const-string v3, "Failed To Start Mdnie Service "

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SemDisplaySolution"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_15
    const-string v0, "SystemServer"

    const-string v3, "SemDisplaySolution Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v3, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_15

    const-string v3, "SystemServer"

    const-string v4, "SemDisplaySolution Service does not exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_15
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object/from16 v19, v0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v15

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v4, "DisplaySolution"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    :goto_24
    goto :goto_25

    :catch_15
    move-exception v0

    const-string v3, "Failed To Start SemDisplaySolution Service "

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SemAllAroundSensing"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_16
    const-string v0, "SystemServer"

    const-string v3, "SemAllAroundSensing Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v3, "com.samsung.android.allaroundsensing.SemAllAroundSensingManagerService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_16

    const-string v3, "SystemServer"

    const-string v4, "SemAllAroundSensing Service does not exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_16
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v20, v0

    const-string v0, "AAS"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    :goto_26
    goto :goto_27

    :catch_16
    move-exception v0

    const-string v3, "Failed To Start SemAllAroundSensing Service "

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p18, :cond_17

    :try_start_17
    invoke-virtual/range {p18 .. p18}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_28

    :catch_17
    move-exception v0

    move-object v4, v0

    const-string v4, "Notifying SAccessoryManager running"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_17
    :goto_28
    nop

    :goto_29
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "Remote Mobile Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Remote Mobile Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    const/4 v4, 0x0

    :try_start_18
    invoke-static {v2, v4, v0}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_2a

    :catch_18
    move-exception v0

    move-object v4, v0

    const-string v4, "SystemServer"

    move-object/from16 v21, v0

    const-string v0, "Failed to add Remote Mobile Manager."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 9

    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_2

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    :try_start_0
    invoke-static {v6, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v5, "SystemServer"

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v5, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v7, :cond_2

    const-string v1, "/data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery/block.map"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SystemServer"

    const-string v4, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .locals 11

    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "SystemServer"

    const-string v2, "Timezone not set; setting to GMT."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "GMT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "persist.sys.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.locale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    invoke-static {v1}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    const-string v3, "SystemServer"

    const-string v4, "!@Boot: Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0xbc2

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_4

    const-string v4, "boot_system_server_init"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    invoke-static {v1}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    invoke-static {v1}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    new-instance v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    nop

    :try_start_1
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.voc"

    const/16 v3, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v0, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "sys.members.installed"

    const-string/jumbo v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "boot_system_server_ready"

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const v1, 0xea60

    const/16 v2, 0x4e20

    const v3, 0xea60

    if-le v0, v3, :cond_6

    const-string v3, "SystemServerTiming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    int-to-long v3, v0

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    const-string/jumbo v3, "ro.boot.debug_level"

    const-string v4, "0x4f4c"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0x494d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "SystemServer"

    const-string v4, "!@ late systemserver initialization, so make dumpstate_booting_delay (20000ms)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "dumpstate.options"

    const-string v4, "bugreportboot"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ctl.start"

    const-string v4, "compact_dump"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .locals 9

    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ReadingSystemConfig"

    const-string v1, "ReadingSystemConfig"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v3, "ReadingSystemConfig"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v1, "StartInstaller"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "DeviceIdentifiersPolicyService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartActivityManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartPowerManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "InitPowerManagement"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartRecoverySystemService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    const-string v2, "StartLightsService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartPdpService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pdp/PdpService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartSidekickService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v2, "config.enable_sidekick_graphics"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartDisplayManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "WaitForDisplay"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v4, :cond_3

    const-string v4, "boot_package_manager_init_start"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v6, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    const-string v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v4, "SystemServer"

    const-string v7, "!@Boot: Start PackageManagerService"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v5, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "SystemServer"

    const-string v5, "!@Boot: End PackageManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sys.boot.end_package"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "boot_package_manager_init_ready"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_6

    const-string v4, "config.disable_otadexopt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_1
    const-string/jumbo v6, "starting OtaDexOptService"

    invoke-direct {p0, v6, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v3

    :cond_6
    :goto_4
    const-string v4, "StartUserManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "InitAttributerCache"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "SetSystemProcess"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "StartOverlayManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "StartOverlayManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/om/OverlayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "persist.sys.displayinset.top"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerService;->updateSystemUiContext()V

    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    :cond_7
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v5, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v6, "StartSensorService"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    return-void
.end method

.method private startCoreServices()V
    .locals 2

    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_0
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting emergency service failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .locals 120

    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v26, 0x0

    const/4 v9, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v0, "config.disable_noncore"

    move-object/from16 v37, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v0, "config.disable_systemtextclassifier"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    const-string v0, "config.disable_slices"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    const-string v0, "config.enable_lefty"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v45

    const-string v0, "config.disable_bluetooth"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.crash_system"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    move-object/from16 v47, v10

    move-object/from16 v48, v11

    :try_start_0
    const-string v0, "SecondaryZygotePreload"

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v10, "SecondaryZygotePreload"

    invoke-virtual {v0, v1, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v1, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v1, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartKeyChainSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSchedulingPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "scheduling_policy"

    new-instance v1, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v1}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTelecomLoaderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTelephonyRegistry"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4e

    move-object v1, v0

    :try_start_1
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartEntropyMixer"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SystemServer"

    const-string v5, "EngineeringModeService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EngineeringModeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4d

    :try_start_2
    const-string v0, "EngineeringModeService"

    new-instance v5, Lcom/android/server/EngineeringModeService;

    invoke-direct {v5, v2}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v55, v1

    :goto_1
    move-object/from16 v59, v4

    :goto_2
    move-object v1, v7

    :goto_3
    move-object/from16 v56, v8

    :goto_4
    move-object/from16 v60, v9

    :goto_5
    move-object/from16 v9, v37

    :goto_6
    move-object/from16 v37, v6

    goto/16 :goto_45

    :catch_1
    move-exception v0

    :try_start_3
    const-string v5, "SystemServer"

    const-string v10, "Failed to add EngineeringModeService."

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SystemServer"

    const-string v5, "PACMService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PACMService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4d

    :try_start_4
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.PACMService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_5
    const-string v5, "SystemServer"

    const-string v10, "Failed to add PACMService."

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SamsungKeyProvisioningManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4d

    :try_start_6
    const-string v0, "SamsungKeyProvisioningManagerService"

    new-instance v5, Lcom/android/server/SamsungKeyProvisioningManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_7
    const-string v5, "SystemServer"

    const-string v10, "Failure starting Samsung Key Provisioning Manager Service "

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "2"

    const-string/jumbo v5, "ro.config.ifaaversion"

    const-string v10, "0"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v10, v0

    const-string v0, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ro.config.ifaaversion] value is : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4d

    if-eqz v10, :cond_2

    :try_start_8
    const-string v0, "com.android.server.IfaaService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v11, v43

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v11, "IfaaService"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v56, v0

    move-object/from16 v55, v1

    const/4 v1, 0x1

    :try_start_9
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v11, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v59, v4

    move-object v1, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v9

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    goto/16 :goto_45

    :catch_6
    move-exception v0

    move-object/from16 v55, v1

    :goto_a
    :try_start_a
    const-string v1, "SystemServer"

    const-string v5, "Failed to add IfaaService."

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :cond_2
    move-object/from16 v55, v1

    :goto_b
    :try_start_b
    const-string v0, "SystemServer"

    const-string v1, "TigerSskdsService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.config.tigerversion"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    const-string v0, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tiger need start service: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4c

    const/4 v5, 0x3

    if-lt v1, v5, :cond_5

    :try_start_c
    const-string v0, "com.samsung.android.service.TigerSskdsService.SskdsDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v11, "isDeviceRegistered"
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4c

    move/from16 v58, v1

    const/4 v5, 0x0

    :try_start_d
    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4c

    move-object/from16 v59, v4

    :try_start_e
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v60, v1

    const-string v1, "Tiger Device Registered: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_3

    const-string v1, "SystemServer"

    const-string v5, "Start TigerSskdsService..."

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.server.TigerSskdsService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v11, v43

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v11, "TigerSskdsService"

    move-object/from16 v61, v1

    move/from16 v62, v4

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v4, v1

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v11, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_10

    :cond_3
    move/from16 v62, v4

    const-string v1, "FINISH"

    const-string/jumbo v4, "persist.sys.setupwizard"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clearSFS"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4b

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_f

    :catch_c
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_c

    :catch_d
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_d

    :catch_e
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_e

    :catch_f
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_f

    :catch_10
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_c
    :try_start_f
    const-string v1, "SystemServer"

    const-string v4, "Failed to add TigerSskdsService."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :catch_11
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_d
    const-string v1, "SystemServer"

    const-string v4, "Failed to get device status, error "

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_12
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_e
    const-string v1, "SystemServer"

    const-string v4, "Tiger \'isDeviceRegistered()\' method not found."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_13
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_f
    const-string v1, "SystemServer"

    const-string v4, "Class TigerSskdsService.SskdsDevice not found!"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_10
    goto :goto_11

    :cond_5
    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_11
    const-string v0, "SystemServer"

    const-string v1, "ActivationTeeService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    const-string v1, "Reactive Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4b

    :try_start_10
    const-string v0, "ReactiveService"

    new-instance v1, Lcom/android/server/ReactiveService;

    invoke-direct {v1, v2}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4b

    goto :goto_12

    :catch_14
    move-exception v0

    :try_start_11
    const-string v1, "SystemServer"

    const-string v4, "Failed to add Reactive Service."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const-string v0, "VaultKeeper Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4b

    :try_start_12
    const-string v0, "VaultKeeperService"

    new-instance v1, Lcom/android/server/VaultKeeperService;

    invoke-direct {v1, v2}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_4b

    goto :goto_13

    :catch_15
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "SystemServer"

    const-string v4, "Failed to add VaultKeeper Service."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartPersonaManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_4b

    :try_start_14
    const-string v0, "SystemServer"

    const-string v1, "Persona Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    move-object v7, v0

    const-string/jumbo v0, "persona"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_4b

    goto :goto_14

    :catch_16
    move-exception v0

    :try_start_15
    const-string v1, "SystemServer"

    const-string v4, "Failure starting Persona Manager Service"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_4b

    :goto_14
    move-object v1, v7

    const/4 v4, 0x1

    move v11, v4

    if-ne v4, v11, :cond_6

    :try_start_16
    const-string v0, "SystemServer"

    const-string v4, "KnoxMUMContainerPolicy Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_17

    goto :goto_15

    :catch_17
    move-exception v0

    goto/16 :goto_3

    :catch_18
    move-exception v0

    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Failure starting KnoxMUMContainerPolicy Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_16

    :cond_6
    :goto_15
    nop

    :goto_16
    move-object/from16 v56, v8

    const/4 v4, 0x1

    if-ne v4, v11, :cond_7

    :try_start_18
    const-string v0, "SystemServer"

    const-string v4, "KnoxMUMRCPPolicyService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    const-string/jumbo v0, "mum_container_rcp_policy"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_19

    goto :goto_17

    :catch_19
    move-exception v0

    goto/16 :goto_4

    :catch_1a
    move-exception v0

    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Failure starting KnoxMUMRCPPolicyService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_18

    :cond_7
    :goto_17
    nop

    :goto_18
    move-object/from16 v60, v9

    :try_start_1a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_4a

    :try_start_1b
    const-string v0, "SEAMS"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SEAMS"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEAMService"

    new-instance v4, Lcom/android/server/SEAMService;

    invoke-direct {v4, v2}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_19

    :catch_1b
    move-exception v0

    goto/16 :goto_5

    :catch_1c
    move-exception v0

    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SE Android Manager Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_4a

    :goto_19
    :try_start_1d
    const-string v0, "SEDenial"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "sedenial"

    new-instance v4, Lcom/android/server/SEDenialService;

    invoke-direct {v4, v2}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v4, "SEDenial service added"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1b

    goto :goto_1a

    :catch_1d
    move-exception v0

    :try_start_1e
    const-string v4, "SystemServer"

    const-string v5, "Registration of denial service failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_4a

    :goto_1a
    :try_start_1f
    const-string v0, "SystemServer"

    const-string v4, "DualAppManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_1b

    move-object v4, v0

    :try_start_20
    const-string/jumbo v0, "dual_app"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_1e

    nop

    move-object/from16 v27, v4

    goto :goto_1c

    :catch_1e
    move-exception v0

    move-object/from16 v27, v4

    goto/16 :goto_5

    :catch_1f
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_1b

    :catch_20
    move-exception v0

    :goto_1b
    :try_start_21
    const-string/jumbo v4, "unable to start DualAppManagerService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "StartAccountManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartContentService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "InstallSystemProviders"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_4a

    if-eqz v0, :cond_8

    :try_start_22
    const-string v0, "UnionMasterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.sepunion.SemUnionMasterService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_1b

    :cond_8
    :try_start_23
    const-string v0, "StartVibratorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/VibratorService;

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_4a

    move-object v9, v0

    :try_start_24
    const-string/jumbo v0, "vibrator"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_49

    if-nez v45, :cond_9

    :try_start_25
    const-string v0, "StartConsumerIrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    const-string v0, "consumer_ir"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_21

    goto :goto_1d

    :catch_21
    move-exception v0

    goto/16 :goto_6

    :cond_9
    :goto_1d
    move-object/from16 v37, v6

    :try_start_26
    const-string v0, "SystemServer"

    const-string v4, "SSRM Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_48

    :try_start_27
    const-string v0, "SSRM Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.android.server.ssrm.CustomFrequencyManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-class v5, Landroid/app/IActivityManager;

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    iget-object v6, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    const-string v7, "CustomFrequencyManagerService"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_22

    goto :goto_1e

    :catch_22
    move-exception v0

    goto/16 :goto_45

    :catch_23
    move-exception v0

    :try_start_28
    const-string v4, "SystemServer"

    const-string/jumbo v5, "ssrm.jar not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_48

    :try_start_29
    new-instance v4, Lcom/android/server/-$$Lambda$SystemServer$cH_FacXLboZKirnIdTLWPzV_1Gc;

    invoke-direct {v4, v2}, Lcom/android/server/-$$Lambda$SystemServer$cH_FacXLboZKirnIdTLWPzV_1Gc;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_24

    goto :goto_1f

    :catch_24
    move-exception v0

    move-object/from16 v63, v1

    move-object v1, v9

    goto/16 :goto_40

    :goto_1f
    :try_start_2a
    const-string v5, "Hqm Service"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    const-string v0, "0"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_48

    if-nez v0, :cond_a

    :try_start_2b
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/hcm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.hcm.HcmManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    const-string v7, "HcmManagerService"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_22

    goto :goto_20

    :catch_25
    move-exception v0

    :try_start_2c
    const-string v4, "SystemServer"

    const-string/jumbo v5, "hcm.jar not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_22

    :cond_a
    :goto_20
    :try_start_2d
    const-string v0, "StartAlarmManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SemMlDapService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_48

    if-eqz v0, :cond_b

    :try_start_2e
    const-string v0, "SemMLDAPService"

    new-instance v4, Lcom/samsung/android/dapservice/MlDapService;

    invoke-direct {v4, v2}, Lcom/samsung/android/dapservice/MlDapService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v4, "SemMlDapService(SemMirrorLinkDapService) added"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_22

    goto :goto_21

    :catch_26
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registration of MlDap service failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_22

    :cond_b
    :goto_21
    :try_start_30
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    move-object v8, v0

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v2, v0}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartInputManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_48

    move-object v7, v0

    :try_start_31
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_47

    if-eqz v0, :cond_c

    :try_start_32
    const-string v0, "Context Aware Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Context Aware Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "context_aware"

    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v4, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_27

    goto :goto_22

    :catch_27
    move-exception v0

    move-object/from16 v59, v7

    goto/16 :goto_45

    :cond_c
    :goto_22
    :try_start_33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_2a

    if-nez v0, :cond_e

    :try_start_34
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_27

    if-eqz v0, :cond_d

    goto :goto_23

    :cond_d
    move-object/from16 v63, v1

    goto :goto_24

    :catch_28
    move-exception v0

    move-object/from16 v63, v1

    goto :goto_25

    :cond_e
    :goto_23
    :try_start_35
    const-string v0, "SemContextService  Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SemContextService Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/semcontextservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.hardware.context.SemContextService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v6, v43

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string/jumbo v6, "scontext"
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_2a

    move-object/from16 v64, v0

    move-object/from16 v63, v1

    const/4 v1, 0x1

    :try_start_36
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_2c

    :goto_24
    goto :goto_26

    :catch_29
    move-exception v0

    goto :goto_25

    :catch_2a
    move-exception v0

    move-object/from16 v63, v1

    move-object/from16 v59, v7

    goto/16 :goto_43

    :catch_2b
    move-exception v0

    move-object/from16 v63, v1

    :goto_25
    :try_start_37
    const-string v1, "SystemServer"

    const-string v4, "Failure starting SemContextService"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    const-string v0, "SystemServer"

    const-string v1, "DeviceRootKeyService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceRootKeyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_46

    :try_start_38
    const-string v0, "DeviceRootKeyService"

    new-instance v1, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v1, v2}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_2c

    goto :goto_27

    :catch_2c
    move-exception v0

    move-object/from16 v59, v7

    goto/16 :goto_41

    :catch_2d
    move-exception v0

    :try_start_39
    const-string v1, "SystemServer"

    const-string v4, "Failed to add DeviceRootKeyService."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    const-string v0, "3.0"

    const-string/jumbo v4, "ro.config.timaversion"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_46

    move/from16 v59, v0

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    :try_start_3a
    new-instance v4, Lcom/android/server/IcccManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "iccc"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string/jumbo v5, "initialization"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_2c

    :try_start_3b
    const-string/jumbo v0, "ro.boot.svb.ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "SVB1.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v5

    const-string v6, "SystemServer"

    move-object/from16 v65, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_2c

    move/from16 v66, v1

    :try_start_3c
    const-string/jumbo v1, "getTrustedBootData result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_2c

    goto :goto_28

    :catch_2e
    move-exception v0

    goto :goto_29

    :cond_f
    move/from16 v66, v1

    :goto_28
    goto :goto_2a

    :catch_2f
    move-exception v0

    move/from16 v66, v1

    :goto_29
    :try_start_3d
    const-string/jumbo v1, "icccManager"

    const-string/jumbo v5, "exception caught"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_2c

    :goto_2a
    if-eqz v59, :cond_10

    const v0, -0xdffffe

    const/4 v1, 0x3

    :try_start_3e
    invoke-virtual {v4, v0, v1}, Lcom/android/server/IcccManagerService;->setSecureData(II)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3e} :catch_2c

    goto :goto_2b

    :catch_30
    move-exception v0

    move-object v1, v0

    :try_start_3f
    const-string/jumbo v1, "icccManager"

    const-string/jumbo v5, "exception caught"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_2c

    :cond_10
    :goto_2b
    goto :goto_2d

    :catch_31
    move-exception v0

    goto :goto_2c

    :catch_32
    move-exception v0

    move/from16 v66, v1

    :goto_2c
    :try_start_40
    const-string v1, "SystemServer"

    const-string v4, "Unable to add ICCC Service "

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_40} :catch_2c

    :goto_2d
    :try_start_41
    const-string v0, "SystemServer"

    const-string v1, "TIMA Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TIMA Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/TimaService;

    invoke-direct {v0, v2}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    const-string/jumbo v0, "tima"

    iget-object v1, v3, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_2c

    goto :goto_2e

    :catch_33
    move-exception v0

    :try_start_42
    const-string/jumbo v1, "starting TimaService except PKM service"

    invoke-direct {v3, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_2c

    :goto_2e
    :try_start_43
    const-string v0, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v1, "SystemServer"

    const-string v4, "Added TimaKesytore provider"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider;

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v4, "SystemServer"

    const-string v5, "Added FipsTimaKesytore provider"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_2c

    :cond_11
    goto :goto_2f

    :catch_34
    move-exception v0

    :try_start_44
    const-string v1, "SystemServer"

    const-string v4, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_44} :catch_2c

    :goto_2f
    nop

    :try_start_45
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const-string/jumbo v0, "knox_ccm_policy"

    iget-object v1, v3, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_ccm_policy"

    iget-object v1, v3, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_2c

    goto :goto_30

    :catch_35
    move-exception v0

    :try_start_46
    const-string v1, "SystemServer"

    const-string v4, "Failed to add ccm policy service"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_2c

    goto :goto_30

    :cond_12
    move/from16 v66, v1

    :goto_30
    :try_start_47
    const-string v0, "Motion Recognition Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_46

    :try_start_48
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "SystemServer"

    const-string v4, "PackageManager is not null!!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.feature.motionrecognition_service"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.gesture.MotionRecognitionService"

    invoke-virtual {v1, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v6, v43

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string/jumbo v6, "motion_recognition"

    move-object/from16 v68, v0

    move-object/from16 v67, v1

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v1, "MotionRecognitionService Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_2c

    :cond_13
    goto :goto_31

    :catch_36
    move-exception v0

    :try_start_49
    const-string v1, "SystemServer"

    const-string v4, "Failure starting MotionRecognitionService"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "BarBeamService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.barcode_emulator"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_46

    if-eqz v0, :cond_14

    :try_start_4a
    const-string v0, "SystemServer"

    const-string v1, "BarBeamService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/BarBeamService;

    invoke-direct {v0, v2}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string v1, "barbeam"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_2c

    goto :goto_32

    :catch_37
    move-exception v0

    :try_start_4b
    const-string v1, "SystemServer"

    const-string v4, "Failure starting BarBeam Service"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_2c

    :cond_14
    :goto_32
    :try_start_4c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v1, "StartSensorService"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v6, 0x1

    goto :goto_33

    :cond_15
    const/4 v6, 0x0

    :goto_33
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v1, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v5}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_46

    move-object v4, v2

    move-object/from16 v57, v5

    move-object v5, v7

    move/from16 v69, v10

    move-object v10, v7

    move v7, v0

    move-object/from16 v61, v8

    move v8, v1

    move-object v1, v9

    move-object/from16 v9, v57

    :try_start_4d
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_45

    move-object v4, v0

    :try_start_4e
    const-string/jumbo v0, "window"

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v0, "input"

    const/4 v5, 0x1

    invoke-static {v0, v10, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SetWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v5, Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;

    const-string v6, "StartHidlServices"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v45, :cond_16

    const-string v0, "StartVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_16
    const-string v0, "StartGearVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v5, 0x80000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    const-string v0, "SemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "GEMALTO"

    const-string v5, "GEMALTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "GEMALTO"

    const-string v5, "NXP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "GEMALTO"

    const-string v5, "OBERTHUR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_44

    if-eqz v0, :cond_18

    :cond_17
    :try_start_4f
    const-string v0, "SemService"

    new-instance v5, Lcom/android/server/SemService;

    invoke-direct {v5, v2}, Lcom/android/server/SemService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_44

    goto :goto_34

    :catch_38
    move-exception v0

    :try_start_50
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SemService "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_34
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.samsung.android.authfw"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.samsung.android.feature.samsungfidouaf"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, ""

    const-string/jumbo v5, "v1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    const-string v0, "SemAuthnrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_44

    :try_start_51
    const-string v0, "SemAuthnrService"

    new-instance v5, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    invoke-direct {v5, v2}, Lcom/samsung/android/authnrservice/service/SemAuthnrService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_44

    goto :goto_35

    :catch_39
    move-exception v0

    :try_start_52
    const-string v5, "SystemServer"

    const-string v6, "Failed to add SemAuthnrService."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1a
    const-string/jumbo v0, "startDesktopModeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual {v10}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v44, :cond_1b

    const-string v0, "SystemServer"

    const-string v5, "No Bluetooth Service (emulator)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_1b
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1c

    const-string v0, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_1c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_1d
    if-eqz v46, :cond_1e

    const-string v0, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_1e
    const-string v0, "StartBluetoothService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_36
    const-string v0, "Bluetooth Secure Mode Manager Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v5, "Bluetooth Secure Mode Manager Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_secure_mode_manager"

    new-instance v5, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v5, v2}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "IpConnectivityMetrics"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "NetworkWatchlistService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PinnerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_44

    :try_start_53
    const-string v0, "SystemServer"

    const-string v5, "Email Keystore Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "emailksproxy"

    new-instance v5, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v5, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_44

    goto :goto_37

    :catch_3a
    move-exception v0

    :try_start_54
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Email Keystore Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    const-string v0, "Encryption service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/DirEncryptService;

    invoke-direct {v0, v2}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_44

    move-object v5, v0

    :try_start_55
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "DirEncryptService"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_3b

    :cond_1f
    nop

    move-object/from16 v25, v5

    goto :goto_38

    :catch_3b
    move-exception v0

    move-object v9, v1

    move-object/from16 v18, v4

    move-object/from16 v25, v5

    goto/16 :goto_3f

    :catch_3c
    move-exception v0

    :try_start_56
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_3b

    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_38
    :try_start_57
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SatsService: Secure AT Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v5, "SatsService: Secure AT Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_44

    :try_start_58
    const-string v0, "SatsService"

    new-instance v5, Lcom/android/server/SatsService;

    invoke-direct {v5, v2}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_44

    goto :goto_39

    :catch_3d
    move-exception v0

    :try_start_59
    const-string v5, "SystemServer"

    const-string v6, "Failed to add SatsService."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SystemServer"

    const-string v5, "RCP Manager Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_44

    :try_start_5a
    new-instance v0, Lcom/android/server/RCPManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5a} :catch_44

    move-object v5, v0

    :try_start_5b
    const-string/jumbo v0, "rcp"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5b} :catch_3e

    nop

    move-object/from16 v26, v5

    goto :goto_3b

    :catch_3e
    move-exception v0

    move-object v9, v1

    move-object/from16 v18, v4

    move-object/from16 v26, v5

    goto/16 :goto_3f

    :catch_3f
    move-exception v0

    move-object/from16 v26, v5

    goto :goto_3a

    :catch_40
    move-exception v0

    :goto_3a
    :try_start_5c
    const-string v5, "SystemServer"

    const-string v6, "Failure starting RCP Manager Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    const-string v0, "Samsung Accessory Manager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_44

    :try_start_5d
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v5, "com.sec.feature.saccessorymanager"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "SystemServer"

    const-string v6, "Samsung Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {v5, v2, v10}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v5, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    const-string/jumbo v5, "saccessory_manager"

    iget-object v6, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v5, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v10, v5}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_44

    :cond_20
    goto :goto_3c

    :catch_41
    move-exception v0

    :try_start_5e
    const-string/jumbo v5, "starting SAccessoryManager"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_44

    :try_start_5f
    const-string v0, "SystemServer"

    const-string v5, "SYSINT not supported in product"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_44

    goto :goto_3d

    :catch_42
    move-exception v0

    :try_start_60
    const-string v5, "SystemServer"

    const-string v6, "SYSINT not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    const-string v0, "OcfKeyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v5, "OcfKeyService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_44

    :try_start_61
    const-string v0, "OcfKeyService"

    new-instance v5, Lcom/android/server/OcfKeyService;

    invoke-direct {v5, v2}, Lcom/android/server/OcfKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_44

    goto :goto_3e

    :catch_43
    move-exception v0

    :try_start_62
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add OcfKeyService. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_44

    nop

    move-object v9, v1

    move-object v1, v4

    move-object v11, v10

    move-object/from16 v10, v25

    move-object/from16 v5, v27

    move-object/from16 v7, v56

    move-object/from16 v6, v60

    move-object/from16 v8, v63

    goto/16 :goto_46

    :catch_44
    move-exception v0

    move-object v9, v1

    move-object/from16 v18, v4

    goto :goto_3f

    :catch_45
    move-exception v0

    move-object v9, v1

    :goto_3f
    move-object/from16 v59, v10

    goto :goto_41

    :catch_46
    move-exception v0

    move-object v10, v7

    move-object v1, v9

    move-object/from16 v59, v10

    move-object/from16 v1, v63

    goto/16 :goto_45

    :catch_47
    move-exception v0

    move-object/from16 v63, v1

    move-object v10, v7

    move-object v1, v9

    move-object/from16 v59, v10

    move-object/from16 v1, v63

    goto :goto_45

    :goto_40
    move-object v9, v1

    :goto_41
    move-object/from16 v1, v63

    goto :goto_45

    :catch_48
    move-exception v0

    move-object/from16 v63, v1

    move-object v1, v9

    goto :goto_42

    :catch_49
    move-exception v0

    move-object/from16 v63, v1

    move-object v1, v9

    move-object/from16 v37, v6

    :goto_42
    move-object/from16 v1, v63

    goto :goto_45

    :catch_4a
    move-exception v0

    move-object/from16 v63, v1

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    :goto_43
    goto :goto_45

    :catch_4b
    move-exception v0

    goto/16 :goto_2

    :catch_4c
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_44

    :catch_4d
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v59, v4

    move-object v1, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v9

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    goto :goto_45

    :catch_4e
    move-exception v0

    move-object/from16 v59, v4

    move-object/from16 v55, v5

    :goto_44
    move-object v1, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v9

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    :goto_45
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v1

    move-object/from16 v1, v18

    move-object/from16 v10, v25

    move-object/from16 v5, v27

    move-object/from16 v7, v56

    move-object/from16 v11, v59

    move-object/from16 v6, v60

    :goto_46
    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v51, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v70, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_21

    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_63
    const-string v0, "accessibility"

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_4f

    goto :goto_47

    :catch_4f
    move-exception v0

    const-string/jumbo v4, "starting Accessibility Manager"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_21
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_64
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_50

    goto :goto_48

    :catch_50
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making display ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_48
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_22

    :try_start_65
    const-string v0, "SystemServer"

    const-string v4, "Add SEM_FM_RADIO_SERVICE"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FMPlayer"

    new-instance v4, Lcom/android/server/FMRadioService;

    invoke-direct {v4, v2}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v4, "FMRadio service added.."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_51

    goto :goto_49

    :catch_51
    move-exception v0

    const-string v4, "Failure starting FM Radio Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_49
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_24

    const-string v0, "0"

    const-string/jumbo v4, "system_init.startmountservice"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_66
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_52

    nop

    move-object/from16 v47, v0

    goto :goto_4a

    :catch_52
    move-exception v0

    const-string/jumbo v4, "starting StorageManagerService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_67
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_53

    goto :goto_4b

    :catch_53
    move-exception v0

    const-string/jumbo v4, "starting StorageStatsService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "DirEncryptSerrvice"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_68
    const-string v0, "SystemServer"

    const-string v4, "DirEncryptSerrvice"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_23

    const-string v0, "SystemServer"

    const-string v4, "DirEncryptService.SystemReady"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_54

    :cond_23
    goto :goto_4c

    :catch_54
    move-exception v0

    const-string/jumbo v4, "starting DirEncryption service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_24
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_25

    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_69
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_55

    goto :goto_4d

    :catch_55
    move-exception v0

    const-string/jumbo v4, "update packages"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_25
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5c

    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6a
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_56

    nop

    move-object/from16 v56, v0

    goto :goto_4e

    :catch_56
    move-exception v0

    const-string/jumbo v4, "starting LockSettingsService service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    move/from16 v62, v0

    if-eqz v62, :cond_26

    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_26
    if-nez v62, :cond_27

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_28
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_6b
    const-string v0, "HarmonyEAS service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "HarmonyEAS service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/HarmonyEASService;

    invoke-direct {v0, v2}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_59

    move-object v4, v0

    :try_start_6c
    const-string/jumbo v0, "harmony_eas_service"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_58

    move-object/from16 v71, v4

    :try_start_6d
    const-string v4, "Harmony EAS service created..."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_57

    nop

    move-object/from16 v72, v5

    move-object/from16 v22, v71

    goto :goto_50

    :catch_57
    move-exception v0

    move-object/from16 v22, v71

    goto :goto_4f

    :catch_58
    move-exception v0

    move-object/from16 v71, v4

    move-object/from16 v22, v71

    goto :goto_4f

    :catch_59
    move-exception v0

    :goto_4f
    const-string v4, "SystemServer"

    move-object/from16 v72, v5

    const-string v5, "Failure starting Harmony EAS service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    :try_start_6e
    const-string v0, "SdpManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SdpManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.SdpManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    move-object/from16 v31, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_5a

    goto :goto_51

    :catch_5a
    move-exception v0

    const-string/jumbo v4, "starting SdpManagerService service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    :try_start_6f
    const-string v0, "SdpLogService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SdpLogService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/SdpLogService;

    invoke-direct {v0, v2}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_5c

    move-object v4, v0

    :try_start_70
    const-string/jumbo v0, "sdp_log"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_5b

    nop

    move-object/from16 v32, v4

    goto :goto_53

    :catch_5b
    move-exception v0

    move-object/from16 v32, v4

    goto :goto_52

    :catch_5c
    move-exception v0

    :goto_52
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SdpLogService Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    if-nez v45, :cond_29

    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_71
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_5e

    move-object v4, v0

    :try_start_72
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_5d

    goto :goto_55

    :catch_5d
    move-exception v0

    goto :goto_54

    :catch_5e
    move-exception v0

    move-object/from16 v4, v70

    :goto_54
    const-string/jumbo v5, "starting StatusBarManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_55
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v70, v4

    :cond_29
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_73
    const-string v0, "SemClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SemClipboardService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "semclipboard"

    new-instance v4, Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {v4, v2}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_5f

    goto :goto_56

    :catch_5f
    move-exception v0

    const-string/jumbo v4, "starting SemClipboardService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_56
    sget-boolean v0, Lcom/samsung/android/jdsms/Sender;->SEP_LITE:Z

    if-nez v0, :cond_2a

    :try_start_74
    const-string v0, "DsmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "DsmsService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dsms"

    new-instance v4, Lcom/samsung/android/jdsms/DsmsService;

    invoke-direct {v4, v2}, Lcom/samsung/android/jdsms/DsmsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_60

    goto :goto_57

    :catch_60
    move-exception v0

    const-string/jumbo v4, "starting DsmsService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_57
    if-nez v38, :cond_2b

    :try_start_75
    const-string v0, "SystemServer"

    const-string v4, "Enterprise Policy"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    move-object/from16 v58, v0

    const-string v0, "SystemServer"

    const-string v4, "Enterprise Policymanager service created..."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_61

    goto :goto_58

    :catch_61
    move-exception v0

    const-string/jumbo v4, "starting EnterpriseDeviceManagerService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    :goto_58
    if-nez v38, :cond_2c

    :try_start_76
    const-string v0, "SystemServer"

    const-string v4, "KnoxCustom Policy"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_63

    move-object v4, v0

    :try_start_77
    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knoxcustom"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "SystemServer"

    const-string v5, "KnoxCustom Policy added."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_62

    nop

    move-object/from16 v59, v4

    goto :goto_5a

    :catch_62
    move-exception v0

    goto :goto_59

    :catch_63
    move-exception v0

    move-object/from16 v4, v59

    :goto_59
    const-string v5, "SystemServer"

    move-object/from16 v73, v4

    const-string v4, "Fail KnoxCustom Policy."

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v59, v73

    :cond_2c
    :goto_5a
    if-eqz v58, :cond_2d

    :try_start_78
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_65

    move-object v4, v0

    :try_start_79
    const-string/jumbo v0, "genericssoservice"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_64

    move-object/from16 v34, v4

    goto :goto_5c

    :catch_64
    move-exception v0

    move-object/from16 v34, v4

    goto :goto_5b

    :catch_65
    move-exception v0

    :goto_5b
    const-string v4, "SystemServer"

    const-string v5, "Failure adding KNOX SSO services"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    :cond_2d
    :goto_5c
    nop

    :goto_5d
    if-eqz v58, :cond_2e

    :try_start_7a
    new-instance v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_67

    move-object v4, v0

    :try_start_7b
    const-string/jumbo v0, "enterprise_shared_device_policy"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_66

    move-object/from16 v33, v4

    goto :goto_5f

    :catch_66
    move-exception v0

    move-object/from16 v33, v4

    goto :goto_5e

    :catch_67
    move-exception v0

    :goto_5e
    const-string v4, "SystemServer"

    const-string v5, "Failure adding KNOX Shared Device service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    :cond_2e
    :goto_5f
    nop

    :goto_60
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_2f

    :try_start_7c
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "enterprise_billing_policy"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_68

    goto :goto_61

    :catch_68
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failure registering EnterpriseBillingPolicy service with EDM service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_61
    if-eqz v58, :cond_30

    :try_start_7d
    const-string v0, "Adding NetworkAnalyticsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Adding NetworkAnalyticsService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_6a

    move-object v4, v0

    :try_start_7e
    const-string/jumbo v0, "knoxnap"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_69

    move-object/from16 v61, v4

    goto :goto_63

    :catch_69
    move-exception v0

    move-object/from16 v61, v4

    goto :goto_62

    :catch_6a
    move-exception v0

    :goto_62
    const-string v4, "SystemServer"

    const-string v5, "Failure starting EnterprisePremiumVpnService and NetworkAnalyticsService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :cond_30
    :goto_63
    nop

    :goto_64
    if-nez v38, :cond_31

    :try_start_7f
    const-string v0, "[KnoxAnalytics] System Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_6b

    goto :goto_65

    :catch_6b
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "[KnoxAnalytics] Failure starting System Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_65
    :try_start_80
    const-string v0, "[SecureTimer] System Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_6c

    goto :goto_66

    :catch_6c
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "[SecureTimer] Failure starting System Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_81
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_6e

    move-object v4, v0

    :try_start_82
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_6d

    goto :goto_68

    :catch_6d
    move-exception v0

    goto :goto_67

    :catch_6e
    move-exception v0

    move-object/from16 v4, v48

    :goto_67
    const-string/jumbo v5, "starting NetworkManagement Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    move-object v5, v4

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v58, :cond_32

    :try_start_83
    const-string v0, "Adding KnoxVpnEngineService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Adding KnoxVpnEngineService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_71

    move-object v4, v0

    :try_start_84
    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_vpn_policy"
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_70

    move-object/from16 v74, v6

    const/4 v6, 0x0

    :try_start_85
    invoke-static {v0, v4, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_6f

    goto :goto_6a

    :catch_6f
    move-exception v0

    move-object/from16 v60, v4

    goto :goto_69

    :catch_70
    move-exception v0

    move-object/from16 v74, v6

    move-object/from16 v60, v4

    goto :goto_69

    :catch_71
    move-exception v0

    move-object/from16 v74, v6

    :goto_69
    const-string v4, "SystemServer"

    const-string v6, "Failure starting KnoxVpnEngineService"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    :cond_32
    move-object/from16 v74, v6

    move-object/from16 v4, v60

    :goto_6a
    move-object/from16 v60, v4

    :goto_6b
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_86
    invoke-static {v2}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v12, v0

    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_72

    goto :goto_6c

    :catch_72
    move-exception v0

    const-string/jumbo v4, "starting IpSec Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v39, :cond_33

    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_33
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_87
    invoke-static {v2, v5}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v13, v0

    const-string/jumbo v0, "netstats"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_73

    goto :goto_6d

    :catch_73
    move-exception v0

    const-string/jumbo v4, "starting NetworkStats Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_88
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_74

    goto :goto_6e

    :catch_74
    move-exception v0

    const-string/jumbo v4, "starting NetworkPolicy Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartUrspService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_89
    new-instance v0, Lcom/android/server/net/UrspService;

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v4, v13, v5}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V

    move-object v15, v0

    const-string/jumbo v0, "urspservice"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_75

    goto :goto_6f

    :catch_75
    move-exception v0

    const-string/jumbo v4, "starting URSP Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_38

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_34
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_35
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.aware"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_36
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_37
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.lowpan"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_38
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.ethernet"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.usb.host"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_39
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3a
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v4, ""

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    const-string v0, "China"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "StartKnoxGuard"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_8a
    const-string/jumbo v0, "knoxguard_service"

    new-instance v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {v6, v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_76

    nop

    move-object/from16 v75, v4

    goto :goto_70

    :catch_76
    move-exception v0

    const-string v6, "SystemServer"

    move-object/from16 v75, v4

    const-string v4, "Failed to add KnoxGuardService."

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_70
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3b
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_8b
    new-instance v0, Lcom/android/server/ConnectivityService;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_79

    move-object v4, v0

    move-object/from16 v48, v5

    move-object/from16 v6, v72

    move-object v5, v2

    move-object/from16 v76, v10

    move-object/from16 v77, v12

    move-object/from16 v10, v74

    move-object v12, v6

    move-object/from16 v6, v48

    move-object/from16 v78, v10

    move-object v10, v7

    move-object v7, v13

    move-object/from16 v79, v10

    move-object v10, v8

    move-object v8, v14

    move-object/from16 v80, v10

    move-object v10, v9

    move-object v9, v15

    :try_start_8c
    invoke-direct/range {v4 .. v9}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IUrspManager;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_78

    move-object v4, v0

    :try_start_8d
    const-string v0, "connectivity"

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-virtual {v13, v4}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual {v14, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual {v15, v4}, Lcom/android/server/net/UrspService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_77

    goto :goto_72

    :catch_77
    move-exception v0

    goto :goto_71

    :catch_78
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_71

    :catch_79
    move-exception v0

    move-object/from16 v48, v5

    move-object/from16 v79, v7

    move-object/from16 v80, v8

    move-object/from16 v76, v10

    move-object/from16 v77, v12

    move-object/from16 v12, v72

    move-object/from16 v78, v74

    move-object v10, v9

    move-object/from16 v4, v16

    :goto_71
    const-string/jumbo v5, "starting Connectivity Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_72
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_8e
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_7b

    move-object v5, v0

    :try_start_8f
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_7a

    goto :goto_74

    :catch_7a
    move-exception v0

    goto :goto_73

    :catch_7b
    move-exception v0

    move-object/from16 v5, v17

    :goto_73
    const-string/jumbo v6, "starting Service Discovery Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_74
    move-object/from16 v17, v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :try_start_90
    const-string v0, "SystemServer"

    const-string v5, "Wi-Fi  Offload Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {v0, v2}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_7d

    move-object v5, v0

    :try_start_91
    const-string/jumbo v0, "wifioffload"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_7c

    nop

    move-object/from16 v30, v5

    goto :goto_76

    :catch_7c
    move-exception v0

    move-object/from16 v30, v5

    goto :goto_75

    :catch_7d
    move-exception v0

    :goto_75
    const-string/jumbo v5, "starting Wi-Fi Offload Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_76
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_92
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_7e

    goto :goto_77

    :catch_7e
    move-exception v0

    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_77
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_93
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v2}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_7f

    goto :goto_78

    :catch_7f
    move-exception v0

    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_78
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v18

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_94
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_81

    move-object v5, v0

    :try_start_95
    const-string/jumbo v0, "location"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_80

    goto :goto_7a

    :catch_80
    move-exception v0

    goto :goto_79

    :catch_81
    move-exception v0

    move-object/from16 v5, v25

    :goto_79
    const-string/jumbo v6, "starting Location Manager"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSLocationService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_96
    const-string v0, "SystemServer"

    const-string v6, "SLocation Manager"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v9

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_83

    move-object v7, v8

    :try_start_97
    const-string/jumbo v8, "sec_location"

    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_82

    goto :goto_7c

    :catch_82
    move-exception v0

    goto :goto_7b

    :catch_83
    move-exception v0

    move-object/from16 v7, v27

    :goto_7b
    const-string v6, "SystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_98
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_85

    move-object v6, v0

    :try_start_99
    const-string v0, "country_detector"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_84

    goto :goto_7e

    :catch_84
    move-exception v0

    goto :goto_7d

    :catch_85
    move-exception v0

    move-object/from16 v6, v51

    :goto_7d
    const-string/jumbo v8, "starting Country Detector"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v45, :cond_3d

    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9a
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_86

    goto :goto_7f

    :catch_86
    move-exception v0

    const-string/jumbo v8, "starting Search Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1120075

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3e
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.broadcastradio"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3f
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v45, :cond_40

    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_40
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9b
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v2, v11}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v11, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_87

    goto :goto_80

    :catch_87
    move-exception v0

    const-string/jumbo v8, "starting WiredAccessoryManager"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_80
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.midi"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_41
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.usb.host"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.usb.accessory"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    if-eqz v44, :cond_43

    :cond_42
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_43
    if-nez v45, :cond_44

    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9c
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_89

    move-object v8, v0

    :try_start_9d
    const-string/jumbo v0, "serial"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_88

    nop

    move-object/from16 v81, v4

    goto :goto_82

    :catch_88
    move-exception v0

    goto :goto_81

    :catch_89
    move-exception v0

    move-object/from16 v8, v19

    :goto_81
    const-string v9, "SystemServer"

    move-object/from16 v81, v4

    const-string v4, "Failure starting SerialService"

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_82
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v19, v8

    goto :goto_83

    :cond_44
    move-object/from16 v81, v4

    :goto_83
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9e
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_8b

    move-object v4, v0

    :try_start_9f
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_8a

    goto :goto_85

    :catch_8a
    move-exception v0

    goto :goto_84

    :catch_8b
    move-exception v0

    move-object/from16 v4, v24

    :goto_84
    const-string v8, "SystemServer"

    const-string v9, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_85
    move-object/from16 v24, v4

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {v2}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_45
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.backup"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_46
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.app_widgets"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x112005d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_47
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_48
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_49
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "EDS Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "ro.SecEDS.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "SystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "false"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    :try_start_a0
    const-string v0, "SystemServer"

    const-string v8, "Starting SecEDSEnable Service"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v8, "com.android.server.SecExternalDisplayService"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a0} :catch_8e

    move-object v0, v8

    if-nez v0, :cond_4a

    :try_start_a1
    const-string v8, "SystemServer"

    const-string/jumbo v9, "eds Service not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a1} :catch_8c

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    goto :goto_86

    :catch_8c
    move-exception v0

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    goto :goto_87

    :cond_4a
    :try_start_a2
    const-string v8, "SystemServer"

    const-string/jumbo v9, "edsclass Service exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    move-object v8, v9

    const-class v9, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v9, v8, v16

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object/from16 v82, v0

    const-string v0, "SecExternalDisplayService"
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_8e

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    const/4 v4, 0x1

    :try_start_a3
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_8d

    :goto_86
    goto :goto_88

    :catch_8d
    move-exception v0

    goto :goto_87

    :catch_8e
    move-exception v0

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    :goto_87
    const-string v4, "SystemServer"

    const-string v5, "Failure starting eds Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    :cond_4b
    move-object/from16 v83, v4

    move-object/from16 v84, v5

    :goto_88
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a4
    const-string/jumbo v0, "diskstats"

    new-instance v4, Lcom/android/server/DiskStatsService;

    invoke-direct {v4, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a4} :catch_8f

    goto :goto_89

    :catch_8f
    move-exception v0

    const-string/jumbo v4, "starting DiskStats Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_89
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_4c

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1120074

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_8a

    :cond_4c
    const/4 v0, 0x0

    :goto_8a
    move v4, v0

    if-eqz v4, :cond_4d

    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_4d
    if-nez v45, :cond_4e

    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a5
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a5} :catch_91

    move-object v5, v0

    :try_start_a6
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a6} :catch_90

    nop

    move-object/from16 v20, v5

    goto :goto_8c

    :catch_90
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_8b

    :catch_91
    move-exception v0

    :goto_8b
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_4e
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a7
    new-instance v0, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v0, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_a7} :catch_93

    move-object v5, v0

    :try_start_a8
    const-string v0, "commontime_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_a8} :catch_92

    goto :goto_8e

    :catch_92
    move-exception v0

    goto :goto_8d

    :catch_93
    move-exception v0

    move-object/from16 v5, v21

    :goto_8d
    const-string/jumbo v8, "starting CommonTimeManagementService service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a9
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_a9} :catch_94

    goto :goto_8f

    :catch_94
    move-exception v0

    const-string/jumbo v8, "starting CertBlacklister"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "graphicsstats"

    new-instance v8, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v8, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_4f

    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "coverage"

    new-instance v8, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v8}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_4f
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.print"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_50
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.companion_device_setup"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_51
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "CocktailBarService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_54

    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "trigger_restart_min_framework"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    const-string v8, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_90

    :cond_52
    const-string v8, "StartCoverService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.cover.CoverManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_91

    :cond_53
    :goto_90
    const-string v8, "SystemServer"

    const-string v9, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_91
    const-string v0, "StartFriendsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.friends.FrsService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_55
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.live_tv"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_56
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_57
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_58
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_59
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_aa
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_aa} :catch_96

    move-object v8, v0

    :try_start_ab
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ab} :catch_95

    goto :goto_93

    :catch_95
    move-exception v0

    goto :goto_92

    :catch_96
    move-exception v0

    move-object/from16 v8, v57

    :goto_92
    const-string/jumbo v9, "starting MediaRouterService"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_93
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.fingerprint"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_5a
    const-string v0, "StartAODService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.aod.AODManagerService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ac
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_ac} :catch_97

    goto :goto_94

    :catch_97
    move-exception v0

    move-object v9, v0

    const-string/jumbo v9, "starting StartBackgroundDexOptService"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_94
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ad
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ad} :catch_98

    goto :goto_95

    :catch_98
    move-exception v0

    move-object v9, v0

    const-string v9, "StartPruneInstantAppsJobService"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_95
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PermissionMonitorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const/4 v9, 0x1

    if-eqz v9, :cond_5b

    :try_start_ae
    new-instance v0, Lcom/android/server/PermissionMonitor;

    invoke-direct {v0, v2}, Lcom/android/server/PermissionMonitor;-><init>(Landroid/content/Context;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_ae} :catch_9b

    move-object/from16 v85, v0

    :try_start_af
    const-string/jumbo v0, "permission.monitor"
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_af} :catch_9a

    move/from16 v86, v4

    move-object/from16 v4, v85

    :try_start_b0
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b0} :catch_99

    nop

    move-object/from16 v35, v4

    goto :goto_97

    :catch_99
    move-exception v0

    move-object/from16 v35, v4

    goto :goto_96

    :catch_9a
    move-exception v0

    move/from16 v86, v4

    move-object/from16 v4, v85

    move-object/from16 v35, v4

    goto :goto_96

    :catch_9b
    move-exception v0

    move/from16 v86, v4

    :goto_96
    const-string/jumbo v4, "launch permission monitor service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_97

    :cond_5b
    move/from16 v86, v4

    :goto_97
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v21, v13

    move-object/from16 v25, v17

    move-object/from16 v57, v18

    move-object/from16 v27, v19

    move-object/from16 v51, v34

    move-object/from16 v4, v56

    move-object/from16 v62, v59

    move-object/from16 v63, v60

    move-object/from16 v64, v61

    move-object/from16 v60, v6

    move-object/from16 v59, v7

    move-object/from16 v61, v8

    move-object/from16 v34, v30

    move-object/from16 v7, v31

    move-object/from16 v56, v35

    move-object/from16 v31, v5

    move-object/from16 v30, v20

    move-object/from16 v35, v33

    move-object/from16 v33, v24

    move-object/from16 v24, v15

    move-object/from16 v15, v32

    move-object/from16 v32, v22

    move-object/from16 v22, v14

    goto :goto_98

    :cond_5c
    move-object/from16 v78, v6

    move-object/from16 v79, v7

    move-object/from16 v80, v8

    move-object/from16 v76, v10

    move-object v4, v12

    move-object v12, v5

    move-object v10, v9

    move-object/from16 v77, v4

    move-object/from16 v81, v16

    move-object/from16 v84, v25

    move-object/from16 v7, v31

    move-object/from16 v4, v56

    move-object/from16 v62, v59

    move-object/from16 v63, v60

    move-object/from16 v64, v61

    move-object/from16 v25, v17

    move-object/from16 v31, v21

    move-object/from16 v59, v27

    move-object/from16 v56, v35

    move-object/from16 v60, v51

    move-object/from16 v61, v57

    move-object/from16 v21, v13

    move-object/from16 v57, v18

    move-object/from16 v27, v19

    move-object/from16 v35, v33

    move-object/from16 v51, v34

    move-object/from16 v33, v24

    move-object/from16 v34, v30

    move-object/from16 v24, v15

    move-object/from16 v30, v20

    move-object/from16 v15, v32

    move-object/from16 v32, v22

    move-object/from16 v22, v14

    :goto_98
    if-nez v45, :cond_5d

    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_5d
    if-eqz v45, :cond_5f

    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v42, :cond_5e

    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_5e
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_5f
    if-nez v41, :cond_60

    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_60
    if-nez v40, :cond_61

    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_61
    const-string v0, "StartSpenGestureManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b1
    const-string/jumbo v0, "spengestureservice"

    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {v5, v2, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b1} :catch_9c

    goto :goto_99

    :catch_9c
    move-exception v0

    const-string/jumbo v5, "starting SpenGestureManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_99
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_62
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v38, :cond_63

    const-string v0, "VSManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_63
    const-string v0, "detectSafeMode()"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v14

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iput-boolean v14, v3, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    if-eqz v14, :cond_64

    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_9a

    :cond_64
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_9a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "KT UCA Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/io/File;

    const-string v5, "/system/lib/libktuca2.so"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v65

    const-string v0, "KTC"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "KOO"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_65
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_66

    if-eqz v65, :cond_66

    :try_start_b2
    const-string v0, "SystemServer"

    const-string v5, "KT UCA Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ktuca"

    new-instance v5, Landroid/ktuca/KtUcaService;

    invoke-direct {v5, v2}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b2} :catch_9d

    goto :goto_9b

    :catch_9d
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure starting KT UCA Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    :goto_9b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/MmsServiceBroker;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "Mobile Payment Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b3
    const-string v0, "SystemServer"

    const-string v5, "Mobile Payment Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mobile_payment"

    new-instance v5, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b3} :catch_9e

    goto :goto_9c

    :catch_9e
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure starting Payment Manager Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSamsungHealthService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    invoke-direct {v0, v2}, Lcom/android/server/shealth/SamsungHealthService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSmartThingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {v0, v2}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLedCoverEditorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ledcovereditor/LedCoverEditorService;

    invoke-direct {v0, v2}, Lcom/android/server/ledcovereditor/LedCoverEditorService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mLedCoverEditorService:Lcom/android/server/ledcovereditor/LedCoverEditorService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLedBackCoverService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ledcovereditor/LedBackCoverService;

    invoke-direct {v0, v2}, Lcom/android/server/ledcovereditor/LedBackCoverService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mLedBackCoverService:Lcom/android/server/ledcovereditor/LedBackCoverService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSamsungNotesService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-direct {v0, v2}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartVoiceNoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    invoke-direct {v0, v2}, Lcom/android/server/voicenote/VoiceNoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_67
    :try_start_b4
    const-string v0, "UCM Policy Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const-string/jumbo v0, "knox_ucsm_policy"

    iget-object v5, v3, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_ucsm_policy"

    iget-object v5, v3, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b4} :catch_9f

    goto :goto_9d

    :catch_9f
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure adding UniversalCredentialManagerService"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    :try_start_b5
    const-string v0, "CredentialManagerService Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const-string v0, "com.samsung.ucs.ucsservice"

    iget-object v5, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b5} :catch_a0

    goto :goto_9e

    :catch_a0
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure adding CredentialManagerService"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9e
    :try_start_b6
    const-string v0, "EnterpriseCertEnrollPolicy Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "knox_scep_policy"

    new-instance v5, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {v5, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "SystemServer"

    const-string v5, "CEP is enabled"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b6} :catch_a1

    goto :goto_9f

    :catch_a1
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "CEP is not enabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9f
    :try_start_b7
    const-string v0, "cepproxyks Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "cepproxyks"

    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v5, v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v5, "CEP Proxy KS Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b7} :catch_a2

    goto :goto_a0

    :catch_a2
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure starting CEP Proxy Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a0
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b8
    invoke-virtual {v10}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b8} :catch_a3

    goto :goto_a1

    :catch_a3
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Vibrator Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v4, :cond_68

    :try_start_b9
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_b9} :catch_a4

    goto :goto_a2

    :catch_a4
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Lock Settings Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_68
    :goto_a2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ba
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_ba} :catch_a5

    goto :goto_a3

    :catch_a5
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v0, :cond_69

    :try_start_bb
    iget-object v0, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bb} :catch_a6

    goto :goto_a4

    :catch_a6
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failed to call UCMService systemReady"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    :goto_a4
    if-eqz v14, :cond_6a

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    :cond_6a
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v8, v0

    const-string/jumbo v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move-object/from16 v87, v10

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v10}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_6b
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_bc
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bc} :catch_a8

    move-object/from16 v88, v4

    :try_start_bd
    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_bd} :catch_a7

    goto :goto_a6

    :catch_a7
    move-exception v0

    goto :goto_a5

    :catch_a8
    move-exception v0

    move-object/from16 v88, v4

    :goto_a5
    const-string/jumbo v4, "making Power Manager Service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_be
    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v4, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v14, v4}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_be} :catch_a9

    goto :goto_a7

    :catch_a9
    move-exception v0

    const-string/jumbo v4, "making Display Manager Service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_bf
    const-string v0, "SystemServer"

    const-string v4, "bigdata mdcService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/mdcservice.jar"
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_bf} :catch_ab

    move-object/from16 v89, v5

    :try_start_c0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.mdc.MdcService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v90, v0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v91, v4

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string/jumbo v5, "mdc_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v92, v0

    const-string v0, "bigdata mdc loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c0} :catch_aa

    goto :goto_a9

    :catch_aa
    move-exception v0

    goto/16 :goto_a8

    :catch_ab
    move-exception v0

    move-object/from16 v89, v5

    :goto_a8
    const-string/jumbo v4, "failed to start mdcService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a9
    :try_start_c1
    invoke-interface {v7}, Landroid/os/ISdpManagerService;->systemReady()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c1} :catch_ac

    goto/16 :goto_aa

    :catch_ac
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making Sdp manager service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_aa
    :try_start_c2
    invoke-virtual {v15}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_c2} :catch_ad

    goto/16 :goto_ab

    :catch_ad
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making Sdp Log Service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ab
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    :try_start_c3
    const-string v0, "SmartBondingServiceReady"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "SMARTBONDING_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c3} :catch_af

    move-object/from16 v94, v0

    move-object/from16 v93, v6

    const/4 v6, 0x1

    :try_start_c4
    new-array v0, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v6, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v95, v4

    move-object/from16 v96, v5

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c4} :catch_ae

    goto :goto_ad

    :catch_ae
    move-exception v0

    goto/16 :goto_ac

    :catch_af
    move-exception v0

    move-object/from16 v93, v6

    :goto_ac
    const-string/jumbo v4, "starting SmartBondingService Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ad

    :cond_6c
    move-object/from16 v93, v6

    :goto_ad
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :try_start_c5
    const-string v0, "SystemServer"

    const-string v4, "Mptcp Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.mptcp.MptcpService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v6, v16

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object/from16 v97, v0

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v6, "SystemServer"

    move-object/from16 v98, v0

    const-string v0, "MPTCP loaded"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_c5} :catch_b0

    goto/16 :goto_ae

    :catch_b0
    move-exception v0

    const-string/jumbo v4, "failed to start MptcpService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    :goto_ae
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1070076

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_af
    if-ge v6, v5, :cond_6e

    move/from16 v99, v5

    aget-object v5, v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v100, v4

    const-string v4, "StartDeviceSpecificServices "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c6
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_c6} :catch_b1

    nop

    move-object/from16 v101, v7

    goto :goto_b0

    :catch_b1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v101, v7

    const-string/jumbo v7, "starting "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v99

    move-object/from16 v4, v100

    move-object/from16 v7, v101

    goto :goto_af

    :cond_6e
    move-object/from16 v100, v4

    move-object/from16 v101, v7

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x208

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_c7
    invoke-virtual {v12}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_c7} :catch_b2

    goto/16 :goto_b1

    :catch_b2
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making DualAppManagerService ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b1
    const-string v0, "StartPersonaSystemready"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    move-object/from16 v7, v80

    :try_start_c8
    invoke-virtual {v7}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_c8} :catch_b3

    goto/16 :goto_b2

    :catch_b3
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Persona Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b2
    move-object/from16 v6, v79

    :try_start_c9
    invoke-virtual {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_c9} :catch_b4

    goto/16 :goto_b3

    :catch_b4
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making KnoxMUMContainerPolicy Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b3
    if-eqz v58, :cond_6f

    :try_start_ca
    const-string v0, "SystemServer"

    const-string/jumbo v5, "enterprisePolicy is not null"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mum_container_policy"

    const/4 v5, 0x0

    invoke-static {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v0, "mum_container_rcp_policy"
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_ca} :catch_b6

    move-object/from16 v102, v4

    move-object/from16 v5, v78

    const/4 v4, 0x1

    :try_start_cb
    invoke-static {v0, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_cb} :catch_b5

    goto/16 :goto_b5

    :catch_b5
    move-exception v0

    goto/16 :goto_b4

    :catch_b6
    move-exception v0

    move-object/from16 v102, v4

    move-object/from16 v5, v78

    :goto_b4
    const-string/jumbo v4, "making enterprise manager service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b5

    :cond_6f
    move-object/from16 v102, v4

    move-object/from16 v5, v78

    goto/16 :goto_b5

    :cond_70
    move-object/from16 v102, v4

    move-object/from16 v5, v78

    move-object/from16 v6, v79

    move-object/from16 v7, v80

    :goto_b5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_cc
    const-string v0, "SystemServer"

    const-string v4, "GameSDKService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/gamesdk.jar"
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_cc} :catch_b8

    move-object/from16 v103, v5

    :try_start_cd
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.gamesdk.GameSDKService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v104, v0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    const-class v5, Landroid/app/IActivityManager;

    const/16 v16, 0x1

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v105, v4

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    aput-object v5, v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string/jumbo v5, "gamesdk"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v106, v0

    const-string v0, "GameSDKService loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_cd} :catch_b7

    goto/16 :goto_b7

    :catch_b7
    move-exception v0

    goto/16 :goto_b6

    :catch_b8
    move-exception v0

    move-object/from16 v103, v5

    :goto_b6
    const-string v4, "SystemServer"

    const-string v5, "Failed to add GameSDKService."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b7
    :try_start_ce
    const-string v0, "SystemServer"

    const-string v4, "GameManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GameManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.game.GameManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v107, v0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v108, v4

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string/jumbo v5, "gamemanager"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v109, v0

    const-string v0, "GameManagerService loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_ce} :catch_b9

    goto/16 :goto_b8

    :catch_b9
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failed to add GameManagerService."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b8
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "MdfService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_cf
    const-string v0, "MdfService"

    new-instance v4, Lcom/android/server/MdfService;

    invoke-direct {v4, v2}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_cf} :catch_ba

    goto/16 :goto_b9

    :catch_ba
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failed to add MdfService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_ba

    :cond_71
    const-string v0, "SystemServer"

    const-string v4, "MdfService is ready"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    :try_start_d0
    const-string v0, "SystemServer"

    const-string v4, "CodecSolutionService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CodecSolutionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/codecsolution.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.codecsolution.CodecSolutionManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_72

    const-string v5, "SystemServer"

    move-object/from16 v110, v0

    const-string v0, "CodecSolution Service does not exist"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v111, v4

    goto :goto_bb

    :cond_72
    move-object/from16 v110, v0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    const-class v5, Landroid/app/IActivityManager;

    const/16 v16, 0x1

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v5, v16

    move-object/from16 v111, v4

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    aput-object v4, v5, v16

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v5, "CodecSolution"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v112, v0

    const-string v0, "CodecSolution Service loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d0} :catch_bb

    goto/16 :goto_bc

    :catch_bb
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failed To Start CodecSolution Service "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bc
    :try_start_d1
    const-string v0, "SystemServer"

    const-string v4, "VoIPInterfaceManager Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "voip"

    new-instance v4, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v4, v2}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d1} :catch_bc

    goto/16 :goto_bd

    :catch_bc
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bd
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "att.iqi.support"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "SystemServer"

    const-string v4, "System feature for IQI found"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/imei/salesCodeChanged"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_73

    :try_start_d2
    const-string v0, "com.att.iqi.IQIServiceBrokerExt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d2} :catch_bf

    move-object/from16 v113, v6

    const/4 v6, 0x0

    :try_start_d3
    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string/jumbo v5, "startIqi"
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d3} :catch_be

    move-object/from16 v114, v7

    :try_start_d4
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d4} :catch_bd

    goto/16 :goto_bf

    :catch_bd
    move-exception v0

    goto/16 :goto_be

    :catch_be
    move-exception v0

    move-object/from16 v114, v7

    goto/16 :goto_be

    :catch_bf
    move-exception v0

    move-object/from16 v113, v6

    move-object/from16 v114, v7

    :goto_be
    const-string v4, "SystemServer"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bf
    goto/16 :goto_c0

    :cond_73
    move-object/from16 v113, v6

    move-object/from16 v114, v7

    const-string v0, "SystemServer"

    const-string v4, "On rebound, no need to start IQI"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    :cond_74
    move-object/from16 v113, v6

    move-object/from16 v114, v7

    const-string v0, "SystemServer"

    const-string v4, "System feature for IQI not found"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c0
    move-object/from16 v43, v89

    move-object/from16 v20, v103

    move-object/from16 v5, v48

    move-object/from16 v49, v8

    move-object/from16 v8, v21

    move-object/from16 v50, v93

    move-object/from16 v52, v113

    move-object/from16 v6, v22

    move-object/from16 v53, v9

    move-object/from16 v9, v81

    move-object/from16 v54, v11

    move-object/from16 v11, v84

    move-object/from16 v66, v12

    move-object/from16 v12, v59

    move-object/from16 v67, v13

    move-object/from16 v13, v60

    move/from16 v68, v14

    move-object/from16 v14, v30

    move-object/from16 v69, v15

    move-object/from16 v15, v31

    move-object/from16 v16, v54

    move-object/from16 v17, v55

    move-object/from16 v18, v61

    move-object/from16 v19, v23

    move-object/from16 v71, v101

    move-object/from16 v72, v114

    move-object/from16 v7, v77

    move-object/from16 v73, v88

    move-object/from16 v74, v100

    move-object/from16 v75, v102

    move-object v4, v1

    move-object/from16 v0, v56

    move-object/from16 v115, v0

    iget-object v0, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v80, v20

    move-object/from16 v79, v52

    move-object/from16 v78, v72

    move-object/from16 v52, v76

    move-object/from16 v76, v87

    move-object/from16 v72, v10

    move-object/from16 v10, v24

    move-object/from16 v116, v4

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v117, v4

    new-instance v4, Lcom/android/server/-$$Lambda$SystemServer$vQ4YIf57lUJYwWz9lXdKSEFb8Dg;

    move-object/from16 v82, v1

    move-object v1, v4

    move-object/from16 v83, v2

    move-object v2, v3

    move-object/from16 v3, v83

    move-object/from16 v20, v0

    move-object/from16 v118, v0

    move-object v0, v4

    move-object/from16 v4, v116

    move-object/from16 v119, v117

    invoke-direct/range {v1 .. v20}, Lcom/android/server/-$$Lambda$SystemServer$vQ4YIf57lUJYwWz9lXdKSEFb8Dg;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/net/UrspService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v119

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method

.method private startThemeService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method private static traceEnd()V
    .locals 1

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
