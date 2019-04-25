.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;,
        Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ACTION_LOCK_WALLPAPER_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.LOCK_WALLPAPER_CHANGED"

.field private static final ACTION_STATUS_LOGGING:Ljava/lang/String; = "com.samsung.android.systemui.ACTION_STATUS_LOGGING"

.field private static final ACTION_WALLPAPER_ENGINE_SHOWN:Ljava/lang/String; = "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

.field private static final BACKUP_DEX_WALLPAPER_DIR:Ljava/lang/String; = "dex_wallpaper_backup"

.field private static final BACKUP_WALLPAPER_DIR:Ljava/lang/String; = "wallpaper_backup"

.field private static final COLOR_CODE_POLLING_THREAD_COUNTDOWN:I = 0x3c

.field private static final CONTEXTSERVICE_FRAMEWORK_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final CONTEXTSERVICE_SURVEY_ACTION:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final CONTEXTSERVICE_SURVEY_ACTION_STATUS:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field private static final CONTEXTSERVICE_SURVEY_APP_ID:Ljava/lang/String; = "com.android.systemui"

.field private static final CONTEXTSERVICE_SURVEY_LOCKSCREEN_PRELOADED_WALLPAPER_TYPE:Ljava/lang/String; = "9022"

.field private static final CONTEXTSERVICE_SURVEY_LOCKSCREEN_WALLPAPER_TYPE:Ljava/lang/String; = "9021"

.field private static final CONTEXTSERVICE_SURVEY_VALUE_ANIMATED:Ljava/lang/String; = "Animated"

.field private static final CONTEXTSERVICE_SURVEY_VALUE_IMAGE:Ljava/lang/String; = "Image"

.field private static final CONTEXTSERVICE_SURVEY_VALUE_MOTION:Ljava/lang/String; = "Motion"

.field private static final CONTEXTSERVICE_SURVEY_VALUE_UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final CONTEXTSERVICE_SURVEY_VALUE_VIDEO:Ljava/lang/String; = "Video"

.field static final DEBUG:Z = false

.field static final DEBUG_LIVE:Z = true

.field private static final DESKTOP_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final EMERGENCY_MODE_PKG_NAME:Ljava/lang/String; = "com.sec.android.emergencymode.service"

.field private static final EXTRA_WALLPAPER_FLAG:Ljava/lang/String; = "which"

.field private static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field private static final INFINITY_SERVICE_INTERFACE:Ljava/lang/String; = "com.android.systemui.infinity.GalaxyWallpaperService"

.field private static final INFINITY_WALLPAPER:Landroid/content/ComponentName;

.field private static final KEYGUARD_WALLPAPER_UPDATOR_CONTENT_PROVIDER_URI:Ljava/lang/String; = "content://com.samsung.android.keyguardwallpaperupdator.MultipleWallpaperContentProvider"

.field private static final KEYGUARD_WALLPAPER_UPDATOR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator"

.field private static final LOCK_STAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.systemui.lockstar"

.field static final LOCK_WALLPAPER_DIR:Ljava/lang/String; = "wallpaper_lock_images"

.field private static final MAXIMUM_BACKUP_DATA_CAPACITY:I = 0xa

.field private static final MAX_BITMAP_SIZE:I = 0x280

.field private static final MAX_CROPPED_WALLPAPER_AREA:I = 0x64000

.field static final MAX_CROP_BITMAP_SIZE:I = 0x2000

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field private static final MINIMUM_STATUS_UPDATE_PERIOD_MS:J = 0x240c8400L

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final MSG_OMC_WALLPAPER_UPDATED:I = 0x1

.field private static final MSG_RESET_KWP_TILT_SETTING:I = 0x3f3

.field private static final MSG_SET_INIT_LIVE_WALLPAPER_VALUE:I = 0x3ed

.field private static final MSG_SET_INIT_SWP_WHITE_BG_VALUE:I = 0x3ef

.field private static final MSG_SET_KWP_TYPE_PRELOAD:I = 0x3ee

.field private static final MSG_SET_SWP_TYPE_PRELOAD:I = 0x3ec

.field private static final MSG_SWITCH_WALLPAPER_BY_DISPLAY_CHANGED:I = 0x3f2

.field private static final MSG_UPDATE_DEFAULT_WALLPAPER:I = 0x3f0

.field private static final MSG_WALLPAPER_BINDING_TIMEOUT:I = 0x3f1

.field private static final NAVIBAR_ENABLED:Z

.field private static final ODTC_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "service.odtcfactory.sec.com.odtcfactoryservice"

.field private static final PERMISSION_SEND_WALLPAPER_COMMAND:Ljava/lang/String; = "com.sec.android.systemui.SEND_WALLPAPER_COMMAND"

.field private static final REQUEST_DELETE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

.field private static final RIL_SYSTEM_PROPERTY_FOR_COLOR_CODE:Ljava/lang/String; = "ril.product_code"

.field static final SETTINGS_KEYGUARD_TRANSPARENCY:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field static final SETTINGS_KEYGUARD_TRANSPARENCY_DEX:Ljava/lang/String; = "dex_lockscreen_wallpaper_transparency"

.field static final SETTINGS_KEYGUARD_TRANSPARENCY_SUB_DISPLAY:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field static final SETTINGS_SYSTEM_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field static final SETTINGS_SYSTEM_TRANSPARENCY_DEX:Ljava/lang/String; = "dex_system_wallpaper_transparency"

.field static final SETTINGS_SYSTEM_TRANSPARENCY_SUB_DISPLAY:Ljava/lang/String; = "sub_display_system_wallpaper_transparency"

.field private static final SPAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.spage"

.field private static final SUPPORT_ANIMATED_WALLPAPER:Z = true

.field private static final SUPPORT_CMF_WALLPAPER:Z

.field private static final SUPPORT_CONTEXTSERVICE_SURVEY_MODE:Z

.field private static final SUPPORT_CSC_CMF:Z

.field private static final SUPPORT_CUSTOM_MOTION_WALLPAPER:Z = false

.field private static final SUPPORT_DCM_WALLPAPER:Z

.field private static final SUPPORT_DDI_WALLPAPER:Z

.field static final SUPPORT_DESKTOP_MODE:Z = true

.field static final SUPPORT_SUB_DISPLAY_MODE:Z

.field private static final SUPPORT_VIDEO_WALLPAPER:Z

.field private static final SWITCH_KNOX_WALLPAPER:I = 0x3ea

.field private static final SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String; = "/sys/class/lcd/panel/window_type"

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field private static final THEME_CENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themecenter"

.field private static final TRANSPARENT_DISABLE:I = 0x1

.field private static final TRANSPARENT_ENABLE:I = 0x0

.field private static final UPDATE_OMC_WALLPAPER:Ljava/lang/String; = "com.samsung.intent.action.RSCUPDATE_START"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field private static final WALLPAPER_BACKUP_INFO:Ljava/lang/String; = "wallpaper_backup_info.xml"

.field private static final WALLPAPER_BACK_UP:Ljava/lang/String; = "system_backup"

.field private static final WALLPAPER_BINDING_TIMEOUT_MILLIS:J = 0x7d0L

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_CROPPER2_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.wallpapercropper2"

.field static final WALLPAPER_DESKTOP:Ljava/lang/String; = "wallpaper_desktop_orig"

.field static final WALLPAPER_DESKTOP_CROP:Ljava/lang/String; = "wallpaper_desktop"

.field static final WALLPAPER_DESKTOP_INFO:Ljava/lang/String; = "wallpaper_desktop_info.xml"

.field static final WALLPAPER_DESKTOP_LOCK:Ljava/lang/String; = "wallpaper_desktop_lock_orig"

.field static final WALLPAPER_DESKTOP_LOCK_CROP:Ljava/lang/String; = "wallpaper_desktop_lock"

.field static final WALLPAPER_FIRST_FRAME:Ljava/lang/String; = "wallpaper_first"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK:Ljava/lang/String; = "wallpaper_lock_orig"

.field private static final WALLPAPER_LOCK_BACK_UP:Ljava/lang/String; = "lock_backup"

.field static final WALLPAPER_LOCK_BAK:Ljava/lang/String; = "wallpaper_lock_orig_backup"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_SUB_DISPLAY:Ljava/lang/String; = "wallpaper_sub_display_orig"

.field static final WALLPAPER_SUB_DISPLAY_CROP:Ljava/lang/String; = "wallpaper_sub_display"

.field static final WALLPAPER_SUB_DISPLAY_INFO:Ljava/lang/String; = "wallpaper_subdisplay_info.xml"

.field static final WALLPAPER_SUB_DISPLAY_LOCK:Ljava/lang/String; = "wallpaper_sub_display_lock_orig"

.field static final WALLPAPER_SUB_DISPLAY_LOCK_CROP:Ljava/lang/String; = "wallpaper_sub_display_lock"

.field static final WALLPAPER_VIDEO_BAK:Ljava/lang/String; = "wallpaper_first_backup"

.field private static final WINDOWTYPE_OFFSET:I = 0xf

.field private static final WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

.field private static final WPAPER_SUPPORT_MOTION_WALLPAPER:Z

.field private static mDeviceColor:Ljava/lang/String;

.field static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupRunning:Z

.field final mBackupWallpaperDataMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBackupWallpaperKey:I

.field private mColorCodePollingThread:Ljava/lang/Thread;

.field mColorExtractor:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[I>;"
        }
    .end annotation
.end field

.field final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentFolderState:I

.field private mCurrentPersonaId:I

.field mCurrentUserId:I

.field final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field final mDesktopLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopMode:I

.field private final mDesktopModeLock:Ljava/lang/Object;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field final mDesktopWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmergencyMode:Z

.field private mExternalInfinityNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mInAmbientMode:Z

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsDesktopMode:Z

.field private mIsEnabledDCMLauncher:Z

.field private mIsUpdateForcedForPersona:Z

.field mIsUserChanged:Z

.field mKeyguardListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field mLastColorCodePollingThreadCount:I

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field mLockColorExtractor:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[I>;"
        }
    .end annotation
.end field

.field final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mNeedToRebindKnoxWallpaper:Z

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

.field mProductCode:Ljava/lang/String;

.field mShuttingDown:Z

.field final mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mSubDisplayWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field mThemeMode:I

.field final mUserRestorecon:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForUnlock:Z

.field mWallpaperBindingFallbackCount:I

.field mWallpaperBindingFallbackExecuted:Z

.field mWallpaperId:I

.field final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_VIDEO_WALLPAPER:Z

    sget-boolean v0, Landroid/app/WallpaperManager;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_DEV_COLOR_MATCHING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_DDI_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_DEV_COLOR_MATCHING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CMF_WALLPAPER:Z

    sget-boolean v0, Landroid/app/WallpaperManager;->SUPPORT_CSC_CMF:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CSC_CMF:Z

    sget-boolean v0, Landroid/app/WallpaperManager;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    sget-object v0, Landroid/app/WallpaperManager;->INFINITY_WALLPAPER:Landroid/content/ComponentName;

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->INFINITY_WALLPAPER:Landroid/content/ComponentName;

    sget-boolean v0, Landroid/app/WallpaperManager;->SUPPORT_DCM_WALLPAPER:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_DCM_WALLPAPER:Z

    const-string v0, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CONTEXTSERVICE_SURVEY_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->NAVIBAR_ENABLED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUpdateForcedForPersona:Z

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNeedToRebindKnoxWallpaper:Z

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mEmergencyMode:Z

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsEnabledDCMLauncher:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExternalInfinityNameList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperDataMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperBindingFallbackCount:I

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperBindingFallbackExecuted:Z

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$13;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastColorCodePollingThreadCount:I

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperService startup (support sub display ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040424

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)[I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperHintsInArea(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperColors;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;II)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_VIDEO_WALLPAPER:Z

    return v0
.end method

.method static synthetic access$1700(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultiWallpaperFileName(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->needUpdateWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2100(II)Lcom/android/internal/util/JournaledFile;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopDualMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onRefreshWallpaperByUiMode(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendLockWallpaperLog(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUpdateForcedForPersona:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->handleOMCWallpaperUpdated()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaperByDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->rebindDefaultWallpaperIfNeeded()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->handleWallpaperBindingTimeout()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->parsingColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CSC_CMF:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isOperatorWallpaper()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorCodePollingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wallpaper/WallpaperManagerService;III)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    return-void
.end method

.method private calculateOptimalSize(III)Landroid/util/Size;
    .locals 8

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateOptimalSize start original width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, p2, p3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-le v0, p1, :cond_0

    int-to-double v3, p1

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    :cond_0
    int-to-double v3, p2

    mul-double/2addr v3, v1

    double-to-int v3, v3

    int-to-double v4, p3

    mul-double/2addr v4, v1

    double-to-int v4, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v4, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateOptimalSize end width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v5
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 2

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    return v1

    :cond_0
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

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

.method private checkValidRegion(Landroid/graphics/Rect;II)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt p3, v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, v1, :cond_1

    :cond_0
    const-string v1, "WallpaperManagerService"

    const-string v2, "checkValidRegion failed : Target area is bigger than wallpaper."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v1, :cond_3

    :cond_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "checkValidRegion faied : It is wrong target area."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    const-string v1, "WallpaperManagerService"

    const-string v2, "checkValidRegion faied : It is wrong width or height"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method private checkWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)V
    .locals 4

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWallpaperData userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wpType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    if-nez p3, :cond_3

    and-int/lit8 v1, p5, 0x1c

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "wallpaper_desktop_lock_orig"

    const-string/jumbo v2, "wallpaper_desktop_lock"

    :goto_0
    goto :goto_1

    :cond_0
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1

    and-int/lit8 v1, p5, 0x1c

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v2, "wallpaper_sub_display_lock"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "wallpaper_lock_orig"

    const-string/jumbo v2, "wallpaper_lock"

    :goto_1
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-nez v3, :cond_2

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_2
    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    invoke-virtual {p0, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    if-nez v1, :cond_4

    invoke-virtual {p2, v0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setMultiWallpaperData(Ljava/io/File;I)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private checkWhichInvalidation(I)Z
    .locals 6

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    and-int/lit8 v2, v1, 0x3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    :cond_2
    and-int/lit8 v1, p1, 0x1c

    if-eqz v1, :cond_4

    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method private cleanUpKWPFiles(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(II)V

    return-void
.end method

.method private cleanUpKWPFiles(II)V
    .locals 5

    const-string v0, "WallpaperManagerService"

    const-string v1, "cleanUpKWPFiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    or-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_VIDEO_WALLPAPER:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete video thumbnail file. wpType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete video thumbnail file path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    :cond_0
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    if-eqz v1, :cond_2

    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete wallpaper and crop file. wpType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete wallpaper file path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    :cond_1
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete crop file path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    :cond_2
    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_3
    return-void
.end method

.method private cleanUpWallpaperFile(II)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperDataWhichSet()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->deleteFile(Ljava/io/File;)V

    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    :cond_0
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

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

.method private enforceCallingOrSelfPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3, p2}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v0

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v1, v0, :cond_0

    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    :cond_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v1, v0, :cond_1

    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    :cond_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    return-void
.end method

.method private extractColor(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorExtractor:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorExtractor:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorExtractor:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorExtractor:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorExtractor:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockColorExtractor:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockColorExtractor:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockColorExtractor:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockColorExtractor:Landroid/os/AsyncTask;

    :cond_2
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockColorExtractor:Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :cond_2
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    move v2, v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    nop

    :cond_4
    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_5
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    const-string v3, "WallpaperManagerService"

    const-string v4, "extractColors: crop file is none so, get colors from cropped bitmap (CSC, OMC case)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v1

    goto :goto_2

    :goto_3
    if-nez v3, :cond_7

    const-string v1, "WallpaperManagerService"

    const-string v4, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v1, v2, :cond_8

    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    and-int/lit8 v1, p2, 0x1c

    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    goto :goto_4

    :cond_8
    const-string v1, "WallpaperManagerService"

    const-string v5, "Not setting primary colors since wallpaper changed"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 25

    move-object/from16 v1, p1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v0

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const-string v0, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generating crop for new wallpaper(s): 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " crop=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") dim=("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v6, v0

    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v7, :cond_10

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v7, :cond_0

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    goto/16 :goto_10

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    iput v10, v3, Landroid/graphics/Rect;->top:I

    iput v10, v3, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v9, v3, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_1
    nop

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v9, v11, :cond_2

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v11

    goto :goto_0

    :cond_2
    move v9, v10

    :goto_0
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v11, v12, :cond_3

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    goto :goto_1

    :cond_3
    move v11, v10

    :goto_1
    invoke-virtual {v3, v9, v11}, Landroid/graphics/Rect;->offset(II)V

    iget v9, v3, Landroid/graphics/Rect;->left:I

    if-gez v9, :cond_4

    iput v10, v3, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v9, v3, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_5

    iput v10, v3, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gt v9, v11, :cond_7

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v9, v11, :cond_6

    goto :goto_2

    :cond_6
    move v9, v10

    goto :goto_3

    :cond_7
    :goto_2
    move v9, v0

    :goto_3
    move v7, v9

    :goto_4
    iget v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eq v9, v11, :cond_8

    move v9, v0

    goto :goto_5

    :cond_8
    move v9, v10

    :goto_5
    move v8, v9

    const-string v9, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop: w="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dims: w="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "meas: w="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " h="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop?="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " scale?="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPreloaded?="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    if-nez v9, :cond_f

    if-nez v7, :cond_9

    if-nez v8, :cond_9

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto/16 :goto_f

    :cond_9
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v12, v11

    nop

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget v15, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    div-int/2addr v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move v15, v0

    :goto_6
    const/16 v16, 0x2

    mul-int v11, v16, v15

    if-ge v11, v14, :cond_a

    mul-int/lit8 v15, v15, 0x2

    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    if-le v15, v0, :cond_b

    :try_start_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v15, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move/from16 v19, v2

    :goto_7
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move/from16 v19, v2

    :goto_8
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto/16 :goto_e

    :cond_b
    const/4 v11, 0x0

    :goto_9
    :try_start_2
    invoke-virtual {v13, v3, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v18, v17

    invoke-virtual {v13}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object/from16 v0, v18

    if-nez v0, :cond_c

    :try_start_3
    const-string v10, "WallpaperManagerService"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v19, v2

    :try_start_4
    const-string v2, "Could not decode new wallpaper"

    invoke-static {v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    move/from16 v2, v19

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto/16 :goto_e

    :cond_c
    move/from16 v19, v2

    :try_start_5
    invoke-virtual {v3, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v2, v3, Landroid/graphics/Rect;->right:I

    div-int/2addr v2, v15

    iput v2, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v2, v15

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v2, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    int-to-float v10, v10

    mul-float/2addr v10, v2

    float-to-int v10, v10

    move-object/from16 v20, v3

    :try_start_6
    const-string v3, "WallpaperManagerService"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v21, v4

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v22, v6

    :try_start_8
    const-string v6, "destWidth = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2000

    if-le v10, v3, :cond_d

    const-string v3, "WallpaperManagerService"

    const-string v4, "Abnormal case - destWidth exceeds the max bitmap size(8192x8192)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x46000000    # 8192.0f

    div-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v4, v6

    move/from16 v23, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move/from16 v24, v7

    const/4 v7, 0x0

    :try_start_9
    invoke-static {v0, v6, v7, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v10, v4

    const-string v4, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropped size : w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\ndestWidth= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    move/from16 v24, v7

    :goto_a
    if-gtz v10, :cond_e

    const-string v3, "WallpaperManagerService"

    const-string v4, "Abnormal case - destWidth is smaller than 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_b

    :catchall_3
    move-exception v0

    goto/16 :goto_d

    :catch_3
    move-exception v0

    goto/16 :goto_e

    :cond_e
    :goto_b
    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    const/4 v4, 0x1

    invoke-static {v0, v10, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v4

    new-instance v4, Ljava/io/BufferedOutputStream;

    const v6, 0x8000

    invoke-direct {v4, v9, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v12, v4

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v2, 0x1

    :goto_c
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move/from16 v24, v7

    goto :goto_d

    :catch_4
    move-exception v0

    move/from16 v24, v7

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    goto :goto_e

    :catchall_8
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    :goto_d
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_8
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    :goto_e
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    move/from16 v2, v19

    goto :goto_11

    :cond_f
    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v7

    :goto_f
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_11

    :cond_10
    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    :goto_10
    const-string v0, "WallpaperManagerService"

    const-string v2, "Invalid wallpaper data"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_11
    :goto_11
    if-nez v2, :cond_12

    const-string v0, "WallpaperManagerService"

    const-string v3, "Unable to apply new wallpaper"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_12
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_13
    return-void
.end method

.method private generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method private generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateResizedBitmap which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/4 v4, 0x0

    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateResizedBitmap invalid which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v5, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CSC_CMF:Z

    if-nez v5, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateResizedBitmap file is null, (which = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") so create default bitmap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_3

    const-string v5, "WallpaperManagerService"

    const-string v6, "generateResizedBitmap bitmap is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const v8, 0x64000

    invoke-direct {v0, v8, v5, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->calculateOptimalSize(III)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v0, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCroppedBitmapInfo(II)[Landroid/graphics/Point;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v13, v11, v12

    iget v13, v13, Landroid/graphics/Point;->x:I

    aget-object v12, v11, v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aget-object v14, v11, v6

    iget v14, v14, Landroid/graphics/Point;->x:I

    aget-object v15, v11, v6

    iget v15, v15, Landroid/graphics/Point;->y:I

    if-gez v14, :cond_4

    const/4 v14, 0x0

    :cond_4
    if-gez v15, :cond_5

    const/4 v15, 0x0

    :cond_5
    const-string v6, "WallpaperManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateResizedBitmap start bitmapWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bitmapHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " optimalWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", optimalHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", finalWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , finalHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", optimalDx = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , optimalDy = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v4, v9, v10, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "WallpaperManagerService"

    const-string v6, "generateResizedBitmap end createScaledBitmap"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v14, v15, v13, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v6, "WallpaperManagerService"

    move-object/from16 v16, v3

    const-string v3, "generateResizedBitmap end createBitmap"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    if-ne v3, p2, :cond_0

    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find BackupWallpaperData with given key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBackupWallpaperDataGivenRealityKey(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
    .locals 5

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupWallpaperDataGivenRealityKey, realityKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "WallpaperManagerService"

    const-string v3, "backupWallpaperDataList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    if-ne v4, p2, :cond_1

    return-object v3

    :cond_1
    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getBackupWallpaperDataList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private getBackupWallpaperDataListSafeLocked(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperDataMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getBackupWallpaperDataSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    move-object v0, v1

    nop

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataListSafeLocked(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getBackupWallpaperFile(III)Ljava/io/File;
    .locals 5

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isRequestForDex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "dex_wallpaper_backup"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "wallpaper_backup"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, p1, 0x2

    if-ne v4, v1, :cond_2

    const-string v1, "lock_backup"

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "system_backup"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getBitmapWithRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapWithRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_3
    nop

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCmfColorCodeFromSettingsDB()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmf_color_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCroppedBitmapInfo(II)[Landroid/graphics/Point;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Point;

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedBitmapOffset start optimal width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v7, v6

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    int-to-float v12, v1

    int-to-float v13, v0

    div-float v3, v12, v13

    move v10, v0

    move v11, v1

    cmpl-float v12, v7, v3

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    if-lez v12, :cond_0

    mul-int v12, v5, v11

    div-int v10, v12, v6

    sub-int v12, v0, v10

    move/from16 v16, v3

    move-object v15, v4

    int-to-double v3, v12

    mul-double/2addr v3, v13

    double-to-int v8, v3

    goto :goto_0

    :cond_0
    move/from16 v16, v3

    move-object v15, v4

    mul-int v3, v6, v10

    div-int v11, v3, v5

    sub-int v3, v1, v11

    int-to-double v3, v3

    mul-double/2addr v3, v13

    double-to-int v9, v3

    goto :goto_0

    :cond_1
    move-object v15, v4

    move/from16 v16, v3

    :goto_0
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDisplayInfo end width = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", height = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", dx = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , dy = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getDefaultDeviceColorFromCMFCode()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCmfColorCodeFromSettingsDB()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    const-string v2, "getDefaultDeviceColor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->parsingColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->parsingColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private getDefaultDeviceColorFromLCDId()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->readColorId()I

    move-result v1

    if-ltz v1, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    sput-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color_id: out of index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "WallpaperManagerService"

    const-string v1, "getDefaultWallpaperBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "WallpaperManagerService"

    const-string v6, "getDefaultWallpaperFile error:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v1, :cond_1

    return-object v3

    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_3
    const-string v4, "WallpaperManagerService"

    const-string v5, "Can\'t decode stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :goto_2
    return-object v0

    :goto_3
    nop

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw v3
.end method

.method private getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CMF_WALLPAPER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ril.product_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rilProductCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/16 v2, 0x8

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rilProductCode=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', colorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmf_color_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "WallpaperManagerService"

    const-string v4, "IndexOutOfBoundsException occurred on getDeviceColorCodeFromSystemProperty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorCodePollingThread:Ljava/lang/Thread;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$14;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$14;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorCodePollingThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorCodePollingThread:Ljava/lang/Thread;

    const-string v3, "ColorCodePollingThread"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorCodePollingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object v1

    :cond_2
    return-object v1
.end method

.method private getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v3
.end method

.method private getLastBackupItem(I)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMakeSettingValueMap(II)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;->getSettingList(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v4, v6, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getNaviBarHeight(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreloadedTypeLoggingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    :cond_0
    return-object v0
.end method

.method private getResizedRect(Landroid/graphics/Rect;Landroid/view/DisplayInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 9

    iget v0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizedRect start rect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " bitmap width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resizedRect end new rect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getThemeColorsLocked(Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v1, "Cannot get theme colors because WallpaperColors is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v3, v2, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/app/WallpaperColors;

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v5, v2, :cond_4

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v2, v4, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    :goto_1
    invoke-virtual {v3, v0}, Landroid/app/WallpaperColors;->setColorHints(I)V

    return-object v3

    :cond_6
    :goto_2
    return-object p1
.end method

.method private getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x1c

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    and-int/lit8 v1, p2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p2, 0x1c

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    and-int/lit8 v1, p2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_0
    return-object v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperHintsInArea(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)[I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    if-nez v1, :cond_0

    const-string v3, "WallpaperManagerService"

    const-string v4, "getWallpaperHintInArea wallpaper data is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    const-string v3, "WallpaperManagerService"

    const-string v4, "getWallpaperHintInArea bitmap is null, generate new cropped bitmap"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_1
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    const-string v4, "WallpaperManagerService"

    const-string v5, "getWallpaperHintInArea fail to generate cropped bitmap"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWhiteWallpaperRegions()[Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-direct {v0, v7, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getResizedRect(Landroid/graphics/Rect;Landroid/view/DisplayInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-direct {v0, v9, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getResizedRect(Landroid/graphics/Rect;Landroid/view/DisplayInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v0, v7, v10, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkValidRegion(Landroid/graphics/Rect;II)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v3, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;Z)I

    move-result v11

    aput v11, v2, v6

    aget v11, v2, v6

    and-int/2addr v11, v8

    aput v11, v2, v6

    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "statusBarRegions rect = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " hint = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v2, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkValidRegion(Landroid/graphics/Rect;II)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v3, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;Z)I

    move-result v11

    aput v11, v2, v8

    aget v11, v2, v8

    and-int/2addr v11, v8

    aput v11, v2, v8

    const-string v11, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bodyRegions rect = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " hint = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v2, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    sget-boolean v10, Lcom/android/server/wallpaper/WallpaperManagerService;->NAVIBAR_ENABLED:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    aget-object v11, v5, v10

    invoke-direct {v0, v11, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getResizedRect(Landroid/graphics/Rect;Landroid/view/DisplayInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v0, v11, v12, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkValidRegion(Landroid/graphics/Rect;II)Z

    move-result v12

    if-eqz v12, :cond_5

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v3, v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;Z)I

    move-result v6

    aput v6, v2, v10

    aget v6, v2, v10

    and-int/2addr v6, v8

    aput v6, v2, v10

    const-string v6, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "naviBarRegions rect = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " hint = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object v2

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getWallpaperLockDir(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_lock_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperSafeLocked, which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, v8, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_0
    move-object v9, v1

    and-int/lit8 v1, v8, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    move-object v10, v1

    and-int/lit8 v1, v8, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    :goto_2
    move-object v11, v1

    and-int/lit8 v1, v8, 0x1c

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    move-object v1, v10

    :goto_3
    goto :goto_4

    :cond_3
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_4

    and-int/lit8 v1, v8, 0x1c

    if-ne v1, v3, :cond_4

    move-object v1, v11

    goto :goto_3

    :cond_4
    move-object v1, v9

    :goto_4
    move-object v12, v1

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_b

    and-int/lit8 v13, v8, 0x1c

    const/4 v5, 0x0

    invoke-direct {v0, v7, v5, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v14, :cond_a

    and-int/lit8 v1, v8, 0x3

    if-ne v1, v2, :cond_7

    and-int/lit8 v1, v8, 0x1c

    if-ne v1, v4, :cond_5

    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_desktop_lock_orig"

    const-string/jumbo v5, "wallpaper_desktop_lock"

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_6

    and-int/lit8 v1, v8, 0x1c

    if-ne v1, v3, :cond_6

    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v5, "wallpaper_sub_display_lock"

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_7

    :cond_7
    const-string v1, "WallpaperManagerService"

    const-string v2, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, v8, 0x1c

    if-ne v1, v4, :cond_8

    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_desktop_orig"

    const-string/jumbo v5, "wallpaper_desktop"

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_8
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_9

    and-int/lit8 v1, v8, 0x1c

    if-ne v1, v3, :cond_9

    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_sub_display_orig"

    const-string/jumbo v5, "wallpaper_sub_display"

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    const/4 v6, 0x1

    move-object v1, v15

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_6
    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_7

    :cond_a
    move-object v1, v14

    :cond_b
    :goto_7
    return-object v1
.end method

.method private getWallpaperTypeLoggingValue(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "Motion"

    goto :goto_0

    :pswitch_1
    const-string v0, "Image"

    goto :goto_0

    :cond_0
    const-string v0, "Video"

    goto :goto_0

    :cond_1
    const-string v0, "Animated"

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWhiteWallpaperRegions()[Landroid/graphics/Rect;
    .locals 13

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/server/wallpaper/WallpaperManagerService;->NAVIBAR_ENABLED:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getNaviBarHeight(Landroid/content/Context;)I

    move-result v7

    :cond_0
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v8

    move v9, v5

    move v10, v8

    const/4 v11, 0x0

    iput v11, v1, Landroid/graphics/Rect;->left:I

    iput v11, v1, Landroid/graphics/Rect;->top:I

    iput v9, v1, Landroid/graphics/Rect;->right:I

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    aput-object v1, v0, v11

    sub-int v10, v6, v8

    sget-boolean v12, Lcom/android/server/wallpaper/WallpaperManagerService;->NAVIBAR_ENABLED:Z

    if-eqz v12, :cond_1

    sub-int/2addr v10, v7

    :cond_1
    iput v11, v2, Landroid/graphics/Rect;->left:I

    iput v8, v2, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    add-int v12, v8, v10

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x1

    aput-object v2, v0, v12

    sget-boolean v12, Lcom/android/server/wallpaper/WallpaperManagerService;->NAVIBAR_ENABLED:Z

    if-eqz v12, :cond_2

    iput v11, v3, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iput v11, v3, Landroid/graphics/Rect;->top:I

    iput v9, v3, Landroid/graphics/Rect;->right:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v7

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x2

    aput-object v3, v0, v11

    :cond_2
    return-object v0
.end method

.method private handleOMCWallpaperUpdated()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->needToUpdateOMCWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->sendWallpaperURIToTheme()V

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    const-string v2, "INFINITY"

    sget-object v3, Landroid/app/WallpaperManager;->WPAPER_VALUE_DEFAULT_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "WallpaperManagerService"

    const-string v3, "current wallpaper is not image wallpaper"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleWallpaperBindingTimeout()V
    .locals 9

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x11

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x9

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "wallpaper binded already!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v3, "trying to bind wallpaperComponent with timeout"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperBindingFallbackExecuted:Z

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_4
    const-string v1, "WallpaperManagerService"

    const-string v2, "WallpaperData is not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private initImageWallpaperCropFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v1, "initImageWallpaperCropFile: wallpaper data is not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WallpaperManagerService"

    const-string v1, "No crop; regenerating from source"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WallpaperManagerService"

    const-string v1, "Unable to regenerate crop; resetting"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_0

    :cond_2
    const-string v0, "WallpaperManagerService"

    const-string v1, "Nondefault wallpaper component; gracefully ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private initLockWallpaperData(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(II)V

    return-void
.end method

.method private initLockWallpaperData(II)V
    .locals 10

    const/4 v0, 0x2

    or-int v1, v0, p2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_0

    or-int v2, v0, p2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    :cond_0
    and-int/lit8 v2, p2, 0x1c

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "wallpaper_desktop_lock_orig"

    const-string/jumbo v3, "wallpaper_desktop_lock"

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_2

    and-int/lit8 v2, p2, 0x1c

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v3, "wallpaper_sub_display_lock"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    goto :goto_0

    :goto_1
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v6

    const/4 v9, 0x1

    move-object v4, v3

    move v5, p1

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v3

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    or-int/2addr v0, p2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method private isDefaultLockImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    or-int v2, v1, p3

    invoke-direct {p0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDefaultLockImageWallpaper: systemWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", hasLockscreenWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", lock current type  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isDesktopDualMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDesktopSingleMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isFactoryModeEnabled()Z
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    return v0
.end method

.method private isLiveWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 2

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isOperatorWallpaper()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1, v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v2}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private isRequestForDex(I)Z
    .locals 2

    and-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportInConsistencyWallpaper()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "lockscreen.rot_override"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private isWallpaperChangeAllowed(Z)Z
    .locals 11

    const/4 v0, 0x1

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v8, "isWallpaperChangeAllowed"

    const-string v2, "false"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    const-string/jumbo v2, "true"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_0

    move-object v6, v10

    goto :goto_0

    :cond_0
    move-object v6, v9

    :goto_0
    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "false"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    :catch_0
    move-exception v3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v0
.end method

.method private loadSettingsLocked(IZ)V
    .locals 2

    const-string v0, "WallpaperManagerService"

    const-string v1, "loadSettingsLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v1, :cond_1

    const/16 v0, 0x10

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    return-void
.end method

.method private loadSettingsLocked(IZI)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v15, p3

    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSettingsLockedInternal  userid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v17

    invoke-static {v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object v13

    const/4 v8, 0x0

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v2, "loadSettingsLocked file is not exists."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    :cond_0
    const/4 v0, 0x1

    or-int v2, v0, v15

    invoke-direct {v1, v14, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v9

    const/16 v10, 0x10

    const/16 v12, 0x8

    if-nez v9, :cond_3

    and-int/lit8 v2, v15, 0x1c

    if-ne v2, v12, :cond_1

    const-string/jumbo v2, "wallpaper_desktop_orig"

    const-string/jumbo v3, "wallpaper_desktop"

    :goto_0
    move-object/from16 v18, v2

    move-object v6, v3

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_2

    and-int/lit8 v2, v15, 0x1c

    if-ne v2, v10, :cond_2

    const-string/jumbo v2, "wallpaper_sub_display_orig"

    const-string/jumbo v3, "wallpaper_sub_display"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    goto :goto_0

    :goto_1
    new-instance v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x1

    move-object/from16 v2, v19

    move v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v9, v19

    iput-boolean v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    or-int v2, v0, v15

    invoke-direct {v1, v14, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLockedForBackupData(I)V

    :cond_4
    const/16 v18, 0x0

    const/4 v7, 0x0

    move v2, v7

    const/4 v6, 0x2

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_44
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_42

    move-object v8, v3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    move-object v5, v3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_41
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_40
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3c

    move/from16 v19, v2

    :goto_2
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v4, v2

    if-ne v4, v6, :cond_f

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const-string/jumbo v2, "wp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_36

    move-object/from16 v20, v13

    const/4 v13, 0x0

    if-eqz v2, :cond_8

    move/from16 v2, p2

    :try_start_3
    invoke-direct {v1, v5, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    const-string v7, "component"

    invoke-interface {v5, v13, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    nop

    :cond_5
    iput-object v13, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v13, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_6

    const-string v13, "android"

    iget-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :cond_7
    invoke-direct {v1, v5, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperCallingPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    move/from16 v28, v4

    move-object v2, v5

    move/from16 v25, v6

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move/from16 v24, v12

    const/4 v3, 0x0

    goto/16 :goto_1f

    :catch_0
    move-exception v0

    move/from16 v25, v6

    :goto_3
    move-object v5, v9

    move-object v7, v11

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_26

    :catch_1
    move-exception v0

    move/from16 v25, v6

    :goto_5
    move-object v5, v9

    move-object v7, v11

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_27

    :catch_2
    move-exception v0

    move/from16 v25, v6

    :goto_7
    move-object v5, v9

    move-object v7, v11

    :goto_8
    const/4 v3, 0x0

    goto/16 :goto_28

    :catch_3
    move-exception v0

    move/from16 v25, v6

    :goto_9
    move-object v5, v9

    move-object v7, v11

    :goto_a
    const/4 v3, 0x0

    goto/16 :goto_29

    :catch_4
    move-exception v0

    move/from16 v25, v6

    :goto_b
    move-object v5, v9

    move-object v7, v11

    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_2a

    :catch_5
    move-exception v0

    move/from16 v25, v6

    :goto_d
    move-object v5, v9

    move-object v7, v11

    :goto_e
    const/4 v3, 0x0

    goto/16 :goto_2b

    :catch_6
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    goto/16 :goto_26

    :catch_7
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    goto/16 :goto_27

    :catch_8
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    goto/16 :goto_28

    :catch_9
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    goto/16 :goto_29

    :catch_a
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    goto/16 :goto_2a

    :catch_b
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    goto/16 :goto_2b

    :cond_8
    move/from16 v2, p2

    :try_start_5
    const-string v0, "kwp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    or-int v0, v6, v15

    invoke-direct {v1, v14, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_30

    and-int/lit8 v7, v15, 0x1c

    if-ne v7, v12, :cond_9

    :try_start_6
    const-string/jumbo v7, "wallpaper_desktop_lock_orig"

    const-string/jumbo v22, "wallpaper_desktop_lock"
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_f
    move-object/from16 v23, v7

    goto :goto_10

    :cond_9
    :try_start_7
    sget-boolean v7, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_32
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_30

    if-eqz v7, :cond_a

    and-int/lit8 v7, v15, 0x1c

    if-ne v7, v10, :cond_a

    :try_start_8
    const-string/jumbo v7, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v22, "wallpaper_sub_display_lock"
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_f

    :cond_a
    :try_start_9
    const-string/jumbo v7, "wallpaper_lock_orig"

    const-string/jumbo v22, "wallpaper_lock"

    goto :goto_f

    :goto_10
    move/from16 v24, v12

    move-object/from16 v12, v22

    if-nez v0, :cond_c

    invoke-direct {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperSize(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v7
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_30

    const/4 v6, 0x1

    if-le v7, v6, :cond_b

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v22, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_12

    const/4 v6, 0x0

    const/16 v26, 0x0

    move-object/from16 v2, v22

    move-object/from16 v27, v3

    move v3, v14

    move/from16 v28, v4

    move-object/from16 v4, v17

    move-object/from16 v29, v5

    move-object v5, v6

    const/16 v25, 0x2

    move-object/from16 v6, v26

    move/from16 v21, v7

    :try_start_b
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v0, v22

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object v6, v13

    goto :goto_11

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    goto/16 :goto_7

    :catch_f
    move-exception v0

    goto/16 :goto_9

    :catch_10
    move-exception v0

    goto/16 :goto_b

    :catch_11
    move-exception v0

    goto/16 :goto_d

    :catch_12
    move-exception v0

    const/16 v25, 0x2

    goto/16 :goto_3

    :catch_13
    move-exception v0

    const/16 v25, 0x2

    goto/16 :goto_5

    :catch_14
    move-exception v0

    const/16 v25, 0x2

    goto/16 :goto_7

    :catch_15
    move-exception v0

    const/16 v25, 0x2

    goto/16 :goto_9

    :catch_16
    move-exception v0

    const/16 v25, 0x2

    goto/16 :goto_b

    :catch_17
    move-exception v0

    const/16 v25, 0x2

    goto/16 :goto_d

    :cond_b
    move-object/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v21, v7

    const/16 v25, 0x2

    :try_start_c
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1e

    const/4 v3, 0x1

    move-object v4, v8

    move-object v8, v2

    move-object v5, v9

    move v9, v14

    move v6, v10

    move-object/from16 v10, v17

    move-object v7, v11

    move-object/from16 v11, v23

    move-object v6, v13

    move v13, v3

    :try_start_d
    invoke-direct/range {v8 .. v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v2

    :goto_11
    or-int v2, v25, v15

    invoke-direct {v1, v14, v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_18

    goto :goto_12

    :catch_18
    move-exception v0

    move-object v8, v4

    goto/16 :goto_4

    :catch_19
    move-exception v0

    move-object v8, v4

    goto/16 :goto_6

    :catch_1a
    move-exception v0

    move-object v8, v4

    goto/16 :goto_8

    :catch_1b
    move-exception v0

    move-object v8, v4

    goto/16 :goto_a

    :catch_1c
    move-exception v0

    move-object v8, v4

    goto/16 :goto_c

    :catch_1d
    move-exception v0

    move-object v8, v4

    goto/16 :goto_e

    :catch_1e
    move-exception v0

    goto/16 :goto_19

    :catch_1f
    move-exception v0

    goto/16 :goto_1a

    :catch_20
    move-exception v0

    goto/16 :goto_1b

    :catch_21
    move-exception v0

    goto/16 :goto_1c

    :catch_22
    move-exception v0

    goto/16 :goto_1d

    :catch_23
    move-exception v0

    goto/16 :goto_1e

    :cond_c
    move-object/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v25, v6

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object v6, v13

    :goto_12
    move-object/from16 v2, v29

    const/4 v3, 0x0

    :try_start_e
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    const-string v8, "callingPackage"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_2a

    const/4 v8, 0x1

    :try_start_f
    invoke-direct {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperCallingPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "legacyCallingPackage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_24

    :cond_d
    move/from16 v19, v8

    goto/16 :goto_1f

    :catch_24
    move-exception v0

    move/from16 v19, v8

    goto :goto_13

    :catch_25
    move-exception v0

    move/from16 v19, v8

    goto :goto_14

    :catch_26
    move-exception v0

    move/from16 v19, v8

    goto :goto_15

    :catch_27
    move-exception v0

    move/from16 v19, v8

    goto :goto_16

    :catch_28
    move-exception v0

    move/from16 v19, v8

    goto :goto_17

    :catch_29
    move-exception v0

    move/from16 v19, v8

    goto :goto_18

    :catch_2a
    move-exception v0

    :goto_13
    move-object v8, v4

    goto/16 :goto_26

    :catch_2b
    move-exception v0

    :goto_14
    move-object v8, v4

    goto/16 :goto_27

    :catch_2c
    move-exception v0

    :goto_15
    move-object v8, v4

    goto/16 :goto_28

    :catch_2d
    move-exception v0

    :goto_16
    move-object v8, v4

    goto/16 :goto_29

    :catch_2e
    move-exception v0

    :goto_17
    move-object v8, v4

    goto/16 :goto_2a

    :catch_2f
    move-exception v0

    :goto_18
    move-object v8, v4

    goto/16 :goto_2b

    :cond_e
    move/from16 v28, v4

    move-object v2, v5

    move/from16 v25, v6

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move/from16 v24, v12

    const/4 v3, 0x0

    goto/16 :goto_1f

    :catch_30
    move-exception v0

    move/from16 v25, v6

    :goto_19
    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    const/4 v3, 0x0

    goto/16 :goto_26

    :catch_31
    move-exception v0

    move/from16 v25, v6

    :goto_1a
    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    const/4 v3, 0x0

    goto/16 :goto_27

    :catch_32
    move-exception v0

    move/from16 v25, v6

    :goto_1b
    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    const/4 v3, 0x0

    goto/16 :goto_28

    :catch_33
    move-exception v0

    move/from16 v25, v6

    :goto_1c
    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    const/4 v3, 0x0

    goto/16 :goto_29

    :catch_34
    move-exception v0

    move/from16 v25, v6

    :goto_1d
    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    const/4 v3, 0x0

    goto/16 :goto_2a

    :catch_35
    move-exception v0

    move/from16 v25, v6

    :goto_1e
    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_f
    move/from16 v28, v4

    move-object v2, v5

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move/from16 v24, v12

    move-object/from16 v20, v13

    :goto_1f
    move/from16 v0, v28

    const/4 v6, 0x1

    if-ne v0, v6, :cond_10

    const/16 v18, 0x1

    nop

    move-object v8, v4

    goto/16 :goto_2d

    :cond_10
    move-object v8, v4

    move-object v9, v5

    move v0, v6

    move-object v11, v7

    move-object/from16 v13, v20

    move/from16 v12, v24

    move/from16 v6, v25

    const/16 v10, 0x10

    move-object v5, v2

    move v7, v3

    goto/16 :goto_2

    :catch_36
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    goto/16 :goto_20

    :catch_37
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    goto/16 :goto_21

    :catch_38
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    goto/16 :goto_22

    :catch_39
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    goto/16 :goto_23

    :catch_3a
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    goto/16 :goto_24

    :catch_3b
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    goto/16 :goto_25

    :catch_3c
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_20
    goto/16 :goto_26

    :catch_3d
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_21
    goto/16 :goto_27

    :catch_3e
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_22
    goto/16 :goto_28

    :catch_3f
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_23
    goto/16 :goto_29

    :catch_40
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_24
    goto/16 :goto_2a

    :catch_41
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_25
    goto/16 :goto_2b

    :catch_42
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_26
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :catch_43
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_27
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :catch_44
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_28
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :catch_45
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_29
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :catch_46
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_2a
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :catch_47
    move-exception v0

    move/from16 v25, v6

    move v3, v7

    move-object v5, v9

    move-object v7, v11

    move-object/from16 v20, v13

    move/from16 v19, v2

    :goto_2b
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v4, "no current wallpaper -- first boot?"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    nop

    :goto_2d
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v18, :cond_11

    const/4 v0, -0x1

    iput v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    const-string v0, ""

    iput-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    or-int v0, v25, v15

    invoke-direct {v1, v14, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    goto :goto_2e

    :cond_11
    iget v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    :cond_12
    :goto_2e
    invoke-direct {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    if-nez v19, :cond_13

    const-string v0, "WallpaperManagerService"

    const-string v2, "Didn\'t set wallpaperData for lockscreen"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(II)V

    goto :goto_2f

    :cond_13
    or-int v0, v25, v15

    invoke-direct {v1, v14, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_14
    :goto_2f
    return-void
.end method

.method private loadSettingsLockedForBackupData(I)V
    .locals 36

    move-object/from16 v1, p0

    const-string v0, "WallpaperManagerService"

    const-string v2, "loadSettingsLockedForBackupData"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_backup_info.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/internal/util/JournaledFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v5, "backup data doesn\'t exist."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2a

    move-object v5, v6

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataListSafeLocked(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_f

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Backup"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "key"

    invoke-interface {v6, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "realityKey"

    invoke-interface {v6, v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "backupWallpaperKey"

    invoke-interface {v6, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    invoke-direct {v15, v1, v13, v14}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    move/from16 v9, v16

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    if-ne v9, v11, :cond_d

    const/16 v16, 0x1

    const-string/jumbo v0, "wp"

    move-object/from16 v10, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v16, 0x1

    :cond_1
    :goto_2
    move/from16 v0, v16

    goto :goto_3

    :cond_2
    const-string v0, "kwp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_24

    if-eqz v0, :cond_1

    const/16 v16, 0x2

    goto :goto_2

    :goto_3
    if-ne v0, v11, :cond_3

    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v16
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v25, v2

    :goto_4
    move-object/from16 v29, v3

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v25, v2

    :goto_5
    move-object/from16 v29, v3

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move-object/from16 v25, v2

    :goto_6
    move-object/from16 v29, v3

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object/from16 v25, v2

    :goto_7
    move-object/from16 v29, v3

    goto/16 :goto_18

    :catch_4
    move-exception v0

    move-object/from16 v25, v2

    :goto_8
    move-object/from16 v29, v3

    goto/16 :goto_19

    :catch_5
    move-exception v0

    move-object/from16 v25, v2

    :goto_9
    move-object/from16 v29, v3

    goto/16 :goto_1a

    :cond_3
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v16
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_24

    :goto_a
    move-object/from16 v20, v16

    if-ne v0, v11, :cond_4

    :try_start_4
    const-string/jumbo v16, "wallpaper_lock_orig"
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :cond_4
    :try_start_5
    const-string/jumbo v16, "wallpaper_orig"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_24

    :goto_b
    move-object/from16 v21, v16

    if-ne v0, v11, :cond_5

    :try_start_6
    const-string/jumbo v16, "wallpaper_lock"
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_c

    :cond_5
    :try_start_7
    const-string/jumbo v16, "wallpaper"

    :goto_c
    move-object/from16 v22, v16

    new-instance v16, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/16 v23, 0x1

    move-object/from16 v18, v16

    move/from16 v19, p1

    invoke-direct/range {v18 .. v23}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v24, v16

    move-object/from16 v11, v24

    invoke-direct {v1, v6, v11, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_24

    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    :try_start_8
    const-string v7, "component"
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v25, v2

    const/4 v2, 0x0

    :try_start_9
    invoke-interface {v6, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_d

    :cond_6
    const/4 v7, 0x0

    :goto_d
    iput-object v7, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v7, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_7

    const-string v7, "android"

    move-object/from16 v26, v2

    iget-object v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_e

    :cond_7
    move-object/from16 v26, v2

    :goto_e
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_6

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    goto/16 :goto_15

    :catch_d
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    goto/16 :goto_16

    :catch_e
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    goto/16 :goto_17

    :catch_f
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    goto/16 :goto_18

    :catch_10
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    goto/16 :goto_19

    :catch_11
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    goto/16 :goto_1a

    :cond_8
    move-object/from16 v25, v2

    :cond_9
    :goto_f
    :try_start_a
    invoke-virtual {v15, v0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    :goto_10
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v9, v2

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    if-ne v9, v7, :cond_b

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SettingsData;->getSettingList(I)[Ljava/lang/String;

    move-result-object v16
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_18

    move-object/from16 v27, v16

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v2, v27

    :try_start_b
    array-length v3, v2
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_12

    move-object/from16 v30, v5

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_a

    :try_start_c
    aget-object v16, v2, v5

    move-object/from16 v31, v16

    nop

    move-object/from16 v32, v2

    move/from16 v33, v3

    move-object/from16 v34, v10

    move-object/from16 v2, v31

    const/4 v3, 0x0

    invoke-interface {v6, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v10, v34

    goto :goto_11

    :cond_a
    move-object/from16 v32, v2

    move-object/from16 v34, v10

    invoke-virtual {v15, v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->setSettingData(ILjava/util/HashMap;)V

    goto :goto_12

    :catch_12
    move-exception v0

    move-object/from16 v30, v5

    goto/16 :goto_15

    :catch_13
    move-exception v0

    move-object/from16 v30, v5

    goto/16 :goto_16

    :catch_14
    move-exception v0

    move-object/from16 v30, v5

    goto/16 :goto_17

    :catch_15
    move-exception v0

    move-object/from16 v30, v5

    goto/16 :goto_18

    :catch_16
    move-exception v0

    move-object/from16 v30, v5

    goto/16 :goto_19

    :catch_17
    move-exception v0

    move-object/from16 v30, v5

    goto/16 :goto_1a

    :cond_b
    move-object/from16 v29, v3

    move-object/from16 v30, v5

    move-object/from16 v34, v10

    :goto_12
    const/4 v2, 0x3

    if-ne v9, v2, :cond_c

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v0, v2

    move v9, v0

    goto :goto_13

    :cond_c
    move-object/from16 v3, v29

    move-object/from16 v5, v30

    move-object/from16 v10, v34

    goto/16 :goto_10

    :catch_18
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_15

    :catch_19
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_16

    :catch_1a
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_17

    :catch_1b
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_18

    :catch_1c
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_19

    :catch_1d
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_1a

    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    :goto_13
    const/4 v0, 0x3

    if-ne v9, v0, :cond_e

    const/16 v0, 0xa

    if-ge v8, v0, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataListSafeLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1e

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :catch_1e
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_15

    :catch_1f
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_16

    :catch_20
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_17

    :catch_21
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_18

    :catch_22
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_19

    :catch_23
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :cond_e
    move-object/from16 v2, v25

    move-object/from16 v3, v29

    move-object/from16 v5, v30

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x2

    goto/16 :goto_1

    :cond_f
    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    :cond_10
    :goto_14
    const/4 v0, 0x1

    if-ne v9, v0, :cond_11

    nop

    move-object/from16 v5, v30

    goto/16 :goto_1c

    :cond_11
    move-object/from16 v2, v25

    move-object/from16 v3, v29

    move-object/from16 v5, v30

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_24
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto :goto_15

    :catch_25
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto :goto_16

    :catch_26
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_17

    :catch_27
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_18

    :catch_28
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_19

    :catch_29
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto/16 :goto_1a

    :catch_2a
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    :goto_15
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :catch_2b
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    :goto_16
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :catch_2c
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    :goto_17
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_2d
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    :goto_18
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_2e
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    :goto_19
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_2f
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v29, v3

    :goto_1a
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "no backup data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    nop

    :goto_1c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method private makeBackupWallpaperKeyLocked()I
    .locals 1

    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    return v0
.end method

.method private static makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;
    .locals 7

    and-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "wallpaper_desktop_info.xml"

    :goto_0
    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "wallpaper_subdisplay_info.xml"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wallpaper_info.xml"

    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/JournaledFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v2
.end method

.method private static makeMultiWallpaperFileName(ILjava/lang/String;)[Ljava/lang/String;
    .locals 7

    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, p0, :cond_0

    add-int/lit8 v3, v2, -0x1

    const-string v4, "%s_%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private migrateFromOld()V
    .locals 7

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private migrateOldKeyguardWallpaper(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_open_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "opne_theme_effect_lockscreen_wallpaper"

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v4, "/data/user/0/com.samsung.android.keyguardwallpaperupdator/files/photoslide_images/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WallpaperManagerService"

    const-string v5, "Cant access to keyguardwallpaperupdator path."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :cond_0
    if-eqz v4, :cond_1

    const-string v5, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper_path"

    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$12;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$12;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;Z)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$12;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const-string v4, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "migrateOldKeyguardWallpaper packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "current_sec_theme_package_open_theme"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "opne_theme_effect_lockscreen_wallpaper"

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(II)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v1, p2, 0x1c

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "wallpaper_desktop_lock_orig"

    const-string/jumbo v2, "wallpaper_desktop_lock"

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_1
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_2

    and-int/lit8 v1, p2, 0x1c

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v2, "wallpaper_sub_display_lock"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "wallpaper_lock_orig"

    const-string/jumbo v2, "wallpaper_lock"

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v5

    const/4 v8, 0x1

    move-object v3, v2

    move v4, p1

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-boolean v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :try_start_0
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void

    :catch_0
    move-exception v3

    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t migrate system wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private needToUpdateOMCWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "user wallpaper is being used"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v4, "no omc wallpaper"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private needUpdateLocked(Landroid/app/WallpaperColors;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    nop

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    packed-switch p2, :pswitch_data_0

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unkonwn theme mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-nez v4, :cond_6

    if-nez v2, :cond_3

    move v0, v3

    nop

    :cond_3
    move v1, v0

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-nez v0, :cond_6

    move v1, v2

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    if-ne v4, v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    move v0, v3

    nop

    :cond_5
    move v1, v0

    nop

    :cond_6
    :goto_1
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needUpdateWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v0

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-lt v1, v0, :cond_1

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$2700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$2700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$2700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "which"

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;II)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v2, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-virtual {v3, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getThemeColorsLocked(Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;

    move-result-object v6

    move-object p1, v6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    :goto_2
    move v3, v5

    if-ge v3, v2, :cond_4

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    :goto_3
    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    if-eqz v4, :cond_5

    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    goto :goto_4

    :cond_6
    goto :goto_5

    :catch_1
    move-exception v3

    :cond_7
    :goto_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyWallpaperColorsChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->shouldExtractColor(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Z

    move-result v3

    move v1, v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;II)V

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColor(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

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

.method private onRefreshWallpaperByUiMode(Z)V
    .locals 4

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefreshWallpaperByUiMode() isDesktopMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_1

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopDualMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "WallpaperManagerService"

    const-string v1, "No need to refresh phone wallpaper when Dual dex is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesktopMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    :try_start_5
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_2
    if-nez v1, :cond_6

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "no current wallpaper -- first switching DeX?"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    goto :goto_3

    :cond_4
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x11

    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    :goto_3
    if-nez v1, :cond_6

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "no current wallpaper"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopDualMode()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "WallpaperManagerService"

    const-string v3, "No need to refresh phone wallpaper when Dual dex is enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v1

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    return-void

    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 11

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v2, v3, :cond_0

    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    :goto_0
    if-nez p3, :cond_2

    const-string/jumbo v2, "width"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    const-string v2, "height"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    :cond_2
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropLeft"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropTop"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropRight"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropBottom"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingBottom"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string/jumbo v2, "true"

    const-string v3, "backup"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    const-string/jumbo v2, "true"

    const-string v3, "isPreloaded"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    const-string v2, "colorsCount"

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorValue"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v9

    if-nez v5, :cond_3

    move-object v6, v9

    goto :goto_2

    :cond_3
    if-ne v5, v3, :cond_4

    move-object v7, v9

    goto :goto_2

    :cond_4
    const/4 v10, 0x2

    if-ne v5, v10, :cond_5

    move-object v8, v9

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "colorHints"

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    new-instance v9, Landroid/app/WallpaperColors;

    invoke-direct {v9, v6, v7, v8, v5}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v9, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_6
    const-string/jumbo v5, "type"

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const-string v4, "length"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v3, :cond_8

    const-string v3, "MOTION"

    sget-object v4, Landroid/app/WallpaperManager;->WPAPER_VALUE_DEFAULT_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "colorCode"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    :cond_7
    const-string/jumbo v3, "motionPkgName"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    :cond_8
    const-string v3, "animatedPkgName"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "videoFilePath"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    const-string/jumbo v3, "videoPkgName"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method private parseWallpaperCallingPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 9

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v6, v7

    aget-object v8, v6, v3

    invoke-virtual {p2, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    nop

    :goto_1
    return-void
.end method

.method private parseWallpaperSize(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "length"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private parsingColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsingColor cmfColorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", featureBasedColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "zy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v2, "zw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v2, "zv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v2, "zs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v2, "zr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v2, "zp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v2, "zn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "zk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_8
    const-string/jumbo v2, "zi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_9
    const-string/jumbo v2, "zg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_a
    const-string/jumbo v2, "zd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_b
    const-string/jumbo v2, "zb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_c
    const-string/jumbo v2, "za"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_d
    const-string v2, "gb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_e
    const-string v2, "di"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_f
    const-string v2, "cw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_10
    const-string v2, "ck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    const-string v0, "black"

    goto :goto_2

    :pswitch_0
    const-string/jumbo v0, "yellow"

    goto :goto_2

    :pswitch_1
    const-string v0, "green"

    goto :goto_2

    :pswitch_2
    const-string/jumbo v0, "white"

    goto :goto_2

    :pswitch_3
    const-string v0, "brown"

    goto :goto_2

    :pswitch_4
    const-string/jumbo v0, "purple"

    goto :goto_2

    :pswitch_5
    const-string/jumbo v0, "silver"

    goto :goto_2

    :pswitch_6
    const-string/jumbo v0, "orchid"

    goto :goto_2

    :pswitch_7
    const-string v0, "blue"

    goto :goto_2

    :pswitch_8
    const-string/jumbo v0, "pink"

    goto :goto_2

    :pswitch_9
    const-string v0, "gold"

    goto :goto_2

    :pswitch_a
    const-string v0, "black"

    nop

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc68 -> :sswitch_10
        0xc74 -> :sswitch_f
        0xc85 -> :sswitch_e
        0xcdb -> :sswitch_d
        0xf27 -> :sswitch_c
        0xf28 -> :sswitch_b
        0xf2a -> :sswitch_a
        0xf2d -> :sswitch_9
        0xf2f -> :sswitch_8
        0xf31 -> :sswitch_7
        0xf34 -> :sswitch_6
        0xf36 -> :sswitch_5
        0xf38 -> :sswitch_4
        0xf39 -> :sswitch_3
        0xf3c -> :sswitch_2
        0xf3d -> :sswitch_1
        0xf3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getCallingPackageInfoAll()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "  callingPackages :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readColorId()I
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->readWindowType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readWindowType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    :cond_0
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readColorId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private readWindowType()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/lcd/panel/window_type"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "WallpaperManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "WallpaperManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :goto_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw v3
.end method

.method private rebindDefaultWallpaperIfNeeded()V
    .locals 9

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CSC_CMF:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CMF_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string v0, "INFINITY"

    sget-object v2, Landroid/app/WallpaperManager;->WPAPER_VALUE_DEFAULT_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rebind CMF InfinityWallpaper color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultInfinityWallpaper()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_6

    if-eqz v0, :cond_2

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rebind CMF ImageWallpaper color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    :cond_5
    nop

    :cond_6
    :goto_1
    return-void
.end method

.method private rebindKnoxWallpaperIfNeeded(I)V
    .locals 7

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebindKnoxWallpaperIfNeeded: mCurrentUserId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPersonaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", personaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNeedToRebindKnoxWallpaper:Z

    goto :goto_0

    :cond_1
    const-string v1, "WallpaperManagerService"

    const-string v2, "fail to rebind knox wallpaper "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mOMCWallpaperUpdatedReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mOMCWallpaperUpdatedReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeBackupWallpaperData(II)V
    .locals 3

    const-string v0, "WallpaperManagerService"

    const-string v1, "clearBackupWallpaperData from the queue list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WallpaperManagerService"

    const-string v2, "backupWallpaperData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->removeWallpaperDataAll(II)V

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private removeOriginalSavedFile(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "WHICH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private removeSystemWallpaperFile(I)V
    .locals 3

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSystemWallpaperFile userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method private removeWallpaperData(II)V
    .locals 3

    and-int/lit8 v0, p2, 0x1c

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    and-int/lit8 v0, p2, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1c

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    and-int/lit8 v0, p2, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p2, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method

.method private restoreBackupWallpaperInternal(ILjava/lang/String;)Z
    .locals 4

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreBackupWallpaperInternal,  key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpWallpaperFile(II)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveRestoreWallpaperFile(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateSettingValue(II)V

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeBackupWallpaperData(II)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLockedForBackupData(I)V

    return v1
.end method

.method private saveBackupWallpaperFile(IIILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupWallpaperFile, origFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", backupFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v3, "WallpaperManagerService"

    const-string/jumbo v4, "need not to copy the file."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WallpaperManagerService"

    const-string/jumbo v4, "need not to copy the file. origFile doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "WallpaperManagerService"

    const-string/jumbo v4, "need not to copy the file because current wallpaper is liveWallpaper"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "save file fail."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_3
    return v2
.end method

.method private saveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "source file exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target file doesn\'t exist, mkdir success? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success copy file. \n\tsource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\ttarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "saveFile(), fail copy file because source file doesn\'t exist."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->deleteFile(Ljava/io/File;)V

    const/4 v0, 0x0

    return v0
.end method

.method private saveRestoreWallpaperFile(IILjava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v5, "WallpaperManagerService"

    const-string/jumbo v6, "saveRestoreWallpaperFile, backup data is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperDataWhichSet()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveRestoreWallpaperFile, which = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", callingPackage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v6, "WallpaperManagerService"

    const-string v8, "backupData is null. Fail"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-virtual {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/saveRestoreWallpaperFile"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    invoke-direct {v0, v1, v10, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_3

    move/from16 v12, p2

    invoke-direct {v0, v7, v1, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v13

    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    invoke-direct {v14, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v14, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    const-string v15, "WallpaperManagerService"

    const-string v4, "imageWallpaperPending = true"

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iput v7, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-direct {v0, v13, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {v0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->isLiveWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "WallpaperManagerService"

    const-string/jumbo v8, "save file failed. backup file could be default wallpaper."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v14}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    goto :goto_1

    :cond_3
    move/from16 v12, p2

    :goto_1
    invoke-direct {v0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->isLiveWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v8, 0x0

    iput-object v8, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const-string v8, "WallpaperManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set liveWallpaper, wallpaperComponent="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_4
    and-int/lit8 v4, v7, 0x2

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    const-string v4, "WallpaperManagerService"

    const-string/jumbo v8, "notifyLockWallpaperChanged called"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    :cond_5
    nop

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    move/from16 v12, p2

    return v8
.end method

.method private saveSettingsLocked(I)V
    .locals 2

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "saveSettingsLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v1, :cond_1

    const/16 v0, 0x10

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    return-void
.end method

.method private saveSettingsLocked(II)V
    .locals 8

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveSettingsLockedInternal mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v5

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    or-int v2, v5, p2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, "wp"

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_0
    const/4 v5, 0x2

    or-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_1

    const-string v5, "kwp"

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_0
    return-void
.end method

.method private saveSettingsLockedForBackupData(I)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "saveSettingsLockedForBackupData"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_backup_info.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/internal/util/JournaledFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v5, v0

    :try_start_0
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v7

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v7

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saving backup data size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    const-string v11, "Backup"

    invoke-interface {v6, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "key"

    iget v12, v10, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "realityKey"

    iget v12, v10, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "backupWallpaperKey"

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperDataWhichSet()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v14

    if-ne v13, v7, :cond_0

    const-string/jumbo v15, "wp"

    goto :goto_2

    :cond_0
    const-string v15, "kwp"

    :goto_2
    invoke-direct {v1, v6, v15, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v10, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getSettingData(I)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v17, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Settings"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v17

    invoke-direct {v1, v6, v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeBackupWallpaperSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;)V

    nop

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "Backup"

    const/4 v7, 0x0

    invoke-interface {v6, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    move-object v0, v7

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_3
    return-void
.end method

.method private saveVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    iput v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    iput-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    invoke-direct {p0, p5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(II)V

    invoke-direct {p0, p5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    return-void
.end method

.method private sendGSIMLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CONTEXTSERVICE_SURVEY_MODE:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendGSIMLog() success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendLockWallpaperLog(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperTypeLoggingValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9021"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendGSIMLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getPreloadedTypeLoggingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    if-eqz v1, :cond_1

    const-string v1, "9022"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendGSIMLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v10

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v11

    const-string v15, "changing live wallpaper"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    move/from16 v12, p3

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {v7, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExternalInfinity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mExternalInfinityNameList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mExternalInfinityNameList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mExternalInfinityNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mExternalInfinityNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v13, 0x1

    :try_start_0
    invoke-direct {v7, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v12

    return-void

    :cond_1
    invoke-direct {v7, v10, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v14, v2

    if-eqz v14, :cond_a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v5, v2

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {v7, v10, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(II)V

    :cond_2
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-direct {v7, v10, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(II)V

    :cond_3
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v2, :cond_4

    or-int/lit8 v1, v1, 0x2

    :cond_4
    move v15, v1

    :try_start_1
    iput-boolean v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-direct {v7, v8, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v16, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v17, 0x0

    move-object v1, v7

    move-object v2, v8

    move-wide/from16 v18, v5

    move-object v5, v14

    move-object/from16 v6, v17

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_6

    if-nez v16, :cond_5

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    :goto_0
    move-wide/from16 v3, v18

    goto :goto_4

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p2

    :try_start_4
    invoke-virtual {v14, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, 0x1

    move v11, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_6
    move-object/from16 v2, p2

    :goto_2
    move-wide/from16 v3, v18

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v1, v14

    if-eqz v11, :cond_7

    invoke-direct {v7, v1, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityWallpaper(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeSystemWallpaperFile(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaper()V

    invoke-virtual {v7, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKWPTypeLiveWallpaper(I)V

    const/4 v0, 0x2

    invoke-virtual {v7, v13, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKWPTypePreload(II)V

    goto :goto_3

    :cond_8
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeSystemWallpaperFile(I)V

    :cond_9
    :goto_3
    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v2, p2

    move-wide/from16 v3, v18

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    move-wide v3, v5

    :goto_4
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move v1, v15

    goto :goto_5

    :cond_a
    move-object/from16 v2, p2

    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper not yet initialized for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object/from16 v2, p2

    :goto_5
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_5
.end method

.method private setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 3

    and-int/lit8 v0, p3, 0x1c

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isDesktopWallpaper:Z

    :cond_0
    and-int/lit8 v0, p3, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p3, 0x1c

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    and-int/lit8 v0, p3, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p3, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private shouldExtractColor(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Z
    .locals 9

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_5

    :cond_1
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v4}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v4

    and-int/lit8 v5, v4, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldExtractColor: hints = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , hasExtraHints = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    move v0, v2

    :cond_5
    :goto_3
    return v0
.end method

.method private switchWallpaperByDisplayChanged(I)V
    .locals 8

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    or-int/lit8 v1, v1, 0x10

    :cond_1
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchWallpaperByDisplayChanged   folderState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentFolderState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " which : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldwhich : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    move v4, v5

    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchWallpaperByDisplayChanged() old : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", new : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_4

    if-eq v1, v0, :cond_4

    if-nez v3, :cond_3

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_5

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    goto :goto_0

    :cond_4
    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchWallpaperByDisplayChanged: which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "isDifferentComponent ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private updateDeviceColor()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CMF_WALLPAPER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDeviceColorFromCMFCode()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDeviceColorFromLCDId()V

    :goto_0
    return-void
.end method

.method private updateFileName(Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;II)V
    .locals 12

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFileName, newKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperDataWhichSet()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rename file\n\tsource : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n\ttarget : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "WallpaperManagerService"

    const-string/jumbo v10, "rename fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSettingValue(II)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WallpaperManagerService"

    const-string v2, "backupWallpaperData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperDataWhichSet()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getSettingData(I)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, v6, v7, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTransparencySettingIfNeed(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x1c

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.themecenter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    const-string v1, "com.sec.android.wallpapercropper2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "service.odtcfactory.sec.com.odtcfactoryservice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    const-string v1, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    and-int/lit8 v1, p2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setSWPTypePreload(II)V

    :cond_3
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKWPTypePreload(II)V

    :cond_4
    return-void
.end method

.method private writeBackupWallpaperSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "id"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "width"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "height"

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "cropLeft"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "cropTop"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "cropRight"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "cropBottom"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "paddingLeft"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_1

    const-string/jumbo v1, "paddingTop"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_2

    const-string/jumbo v1, "paddingRight"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_3

    const-string/jumbo v1, "paddingBottom"

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "colorsCount"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v3, :cond_4

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Color;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "colorHints"

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v3, "name"

    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "component"

    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-boolean v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v3, :cond_7

    const-string v3, "backup"

    const-string/jumbo v4, "true"

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-boolean v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    if-eqz v3, :cond_8

    const-string v3, "isPreloaded"

    const-string/jumbo v4, "true"

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-string/jumbo v3, "type"

    iget v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "kwp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    if-lez v3, :cond_9

    const-string v3, "length"

    iget v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    const-string v3, "MOTION"

    sget-object v5, Landroid/app/WallpaperManager;->WPAPER_VALUE_DEFAULT_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    if-eqz v3, :cond_a

    const-string v3, "colorCode"

    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    if-ne v3, v4, :cond_b

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "motionPkgName"

    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_c

    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_c

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    if-eqz v3, :cond_c

    const-string v3, "animatedPkgName"

    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_e

    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_e

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    if-eqz v3, :cond_d

    const-string/jumbo v3, "videoFilePath"

    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    if-eqz v3, :cond_e

    const-string/jumbo v3, "videoPkgName"

    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getCallingPackageInfoAll()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    nop

    :goto_1
    if-gt v2, v5, :cond_10

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eq v2, v5, :cond_f

    const-string v4, ";"

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_10
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 8

    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WallpaperManagerService"

    const-string v2, "Failed attaching wallpaper; clearing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    const-string v0, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " force="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopDualMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isDesktopWallpaper:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v6, "Ignore binding of ImageWallpaper service for Dex Dual mode"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const/4 v6, 0x1

    if-nez v3, :cond_2

    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    if-nez v2, :cond_2

    const-string v0, "WallpaperManagerService"

    const-string v5, "bindWallpaperComponentLocked: still using default"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v5, "same wallpaper"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    if-nez v2, :cond_5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v2, v0

    if-nez v2, :cond_5

    const-string v0, "INFINITY"

    sget-object v7, Landroid/app/WallpaperManager;->WPAPER_VALUE_DEFAULT_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CSC_CMF:Z

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mEmergencyMode:Z

    if-nez v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFactoryModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v6, v0, v0}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultInfinityWallpaper()Landroid/content/ComponentName;

    move-result-object v7

    move-object v2, v7

    const/4 v7, 0x2

    invoke-static {v7, v0, v0}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v7}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "lockscreen_wallpaper"

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v0, v7, v5, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "lockscreen_wallpaper"

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v0, v7, v6, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    const-string v0, "WallpaperManagerService"

    const-string v7, "Using infinity wallpaper"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    const-string v0, "WallpaperManagerService"

    const-string v7, "Using image wallpaper"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mEmergencyMode:Z

    if-eqz v0, :cond_5

    iput-boolean v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mEmergencyMode:Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v11, p5

    goto/16 :goto_7

    :cond_5
    :goto_1
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move v7, v0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v0, v2, v8, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    move-object v8, v0

    if-nez v8, :cond_6

    const-string v0, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted wallpaper "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is unavailable"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    const-string v0, "android.permission.BIND_WALLPAPER"

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_7

    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultInfinityWallpaper(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.systemui.infinity.GalaxyWallpaperService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_2

    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.service.wallpaper.WallpaperService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    :goto_2
    if-eqz v2, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-interface {v0, v10, v11, v12, v7}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    move v0, v5

    :goto_3
    move v12, v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_d

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v13, v0

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_c

    :try_start_1
    new-instance v0, Landroid/app/WallpaperInfo;

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v14, v6}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    move-object v9, v0

    goto :goto_4

    :catch_1
    move-exception v0

    if-nez p3, :cond_a

    :try_start_2
    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v0

    if-nez p3, :cond_b

    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_c
    add-int/lit8 v0, v12, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    if-nez v9, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_e

    const-string v6, "WallpaperManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_e
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v0, v1, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    move-object v6, v0

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.client_label"

    const v11, 0x1040b22

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.client_intent"

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v14, 0x10401aa

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v16, v11

    move-object/from16 v21, v12

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v11, 0x22000001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v10, v6, v11, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to bind service: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_10

    const-string v11, "WallpaperManagerService"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_10
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_11
    const-string v0, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bindService success connect : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bindService success connect : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v11, :cond_12

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ef

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v11, "WallpaperManagerService"

    const-string/jumbo v12, "send ChangedIntent complete"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v11, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    if-eqz v2, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "WallpaperManagerService"

    const-string v11, "Run binding timeout cause duplicated bind / unbind of image wallpaper"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3f1

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x7d0

    invoke-virtual {v0, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_13
    iput-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v11, p5

    :try_start_3
    iput-object v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v0, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wallpaper userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " , current user Id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v12, :cond_14

    const-string v0, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding window token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v12, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v13, 0x7dd

    invoke-interface {v0, v12, v13, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v0, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mLastWallpaper wallpaperComponent="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v12, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " nextWallpaperComponent="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v12, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mNeedToRebindKnoxWallpaper:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_15
    :goto_5
    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    nop

    const/4 v5, 0x1

    return v5

    :catch_4
    move-exception v0

    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez p3, :cond_16

    const-string v7, "WallpaperManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_16
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public clearBackupWallpaperGivenKey(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBackupWallpaperGivenKey, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WallpaperManagerService"

    const-string v3, "key value is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataGivenRealityKey(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeBackupWallpaperData(II)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLockedForBackupData(I)V

    return-void
.end method

.method public clearBackupWallpapers(I)V
    .locals 10

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBackupWallpapers, which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->removeWallpaperData(I)V

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->hasWallpaperData()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isRequestForDex(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "dex_wallpaper_backup"

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "wallpaper_backup"

    :goto_2
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v5

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iput v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupWallpaperKey:I

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLockedForBackupData(I)V

    return-void
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 9

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearWallpaper callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.emergencymode.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mEmergencyMode:Z

    :cond_0
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "clearWallpaper"

    const/4 v8, 0x0

    move v4, p3

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 p3, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, p2, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    and-int/lit8 v3, p2, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x10

    if-ne v3, v4, :cond_3

    and-int/lit8 v3, p2, 0x1c

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    :cond_3
    :goto_0
    and-int/lit8 v3, p2, 0x3

    if-eq v3, v1, :cond_4

    if-nez p3, :cond_6

    :cond_4
    and-int/lit8 v1, p2, 0x1c

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v1

    :cond_6
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_7

    invoke-direct {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_8
    :goto_2
    return-void
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    and-int/lit8 v0, v8, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    and-int/lit8 v0, v8, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    and-int/lit8 v11, v8, 0x1c

    and-int/lit8 v2, v8, 0x3

    const/4 v3, 0x0

    if-ne v2, v1, :cond_3

    invoke-direct {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_1
    move-object v12, v0

    goto :goto_2

    :cond_3
    invoke-direct {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {v7, v9, v3, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    invoke-direct {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    goto :goto_1

    :goto_2
    if-nez v12, :cond_4

    return-void

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v13, v4

    :try_start_0
    iget-object v0, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    and-int/lit8 v0, v8, 0x3

    if-ne v0, v1, :cond_7

    invoke-direct {v7, v9, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeWallpaperData(II)V

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_5
    :goto_4
    goto :goto_3

    :cond_6
    :try_start_2
    invoke-direct {v7, v9, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7
    const/4 v15, 0x0

    move-object/from16 v16, v15

    :try_start_3
    const-string v0, ""

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v2, :cond_8

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_8

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_8
    iput-object v15, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-boolean v3, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iget v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v9, v2, :cond_9

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9
    and-int/lit8 v2, v8, 0x3

    if-eq v2, v1, :cond_c

    if-eqz p1, :cond_a

    :try_start_4
    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v1

    goto :goto_5

    :cond_a
    move-object v2, v15

    :goto_5
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v7

    move-object v5, v12

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityComponent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v7, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityComponent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {v7, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c
    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    :goto_6
    move-object/from16 v1, v16

    :try_start_5
    const-string v0, "WallpaperManagerService"

    const-string v2, "Default wallpaper component not found!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_d

    :try_start_6
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    :cond_d
    :goto_7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public copyFileToWallpaperFile(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->copyFileToWallpaperFile(IZ)V

    return-void
.end method

.method public copyFileToWallpaperFile(IZ)V
    .locals 11

    const-string v0, "WallpaperManagerService"

    const-string v1, "copyFileToWallpaperFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    and-int/lit8 v1, p1, 0x1c

    const/4 v2, 0x1

    or-int v3, v2, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    :cond_0
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    and-int/lit8 v6, p1, 0x1c

    invoke-direct {p0, v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(II)V

    const/4 v6, 0x2

    or-int v7, v6, v1

    invoke-direct {p0, v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    iput-boolean v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    const/4 v9, 0x3

    or-int/2addr v9, v1

    iput v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    iput-object v5, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    iput-boolean v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isCopied:Z

    iput-boolean p2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    if-eqz v3, :cond_1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v10, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v4, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    goto :goto_0

    :cond_3
    const-string v9, "WallpaperManagerService"

    const-string v10, "failed copyFile (0x03)"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKWPTypeLiveWallpaper(I)V

    or-int v2, v6, v1

    invoke-virtual {p0, v8, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->setKWPTypePreload(II)V

    return-void
.end method

.method public copyPreloadedFileToWallpaperFile(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->copyFileToWallpaperFile(IZ)V

    return-void
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    :cond_2
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWidth="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mHeight="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mPadding="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  wpType="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mAllowBackup="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_1

    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    const-string v5, "    mToken="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mEngine="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    :cond_2
    const-string v4, "  isPreloaded="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    invoke-direct {p0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v2, "Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWidth="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mHeight="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mPadding="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  wpType="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  length="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  preloadKWPColorCode="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  motionPkgName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  animatedPkgName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  videoFilePath="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  videoPkgName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  isPreloaded="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mAllowBackup="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    invoke-direct {p0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v2, "Desktop System wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v4, "  User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWidth="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mHeight="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mPadding="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  wpType="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_5

    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    const-string v5, "    mToken="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mEngine="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    :cond_6
    invoke-direct {p0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    const-string v2, "Desktop Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWidth="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mHeight="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mPadding="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  wpType="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  length="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  preloadKWPColorCode="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  animatedPkgName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  videoFilePath="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  videoPkgName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_8
    const-string v2, " mWallpaperBindingFallbackCount ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperBindingFallbackCount:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_d

    const-string v2, "Sub display System wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v4, "  User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWidth="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mHeight="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mPadding="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  wpType="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_9

    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    const-string v5, "    mToken="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mEngine="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    :cond_a
    invoke-direct {p0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_b
    const-string v2, "Sub display Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  wpType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  length="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  preloadKWPColorCode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  animatedPkgName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  videoFilePath="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  videoPkgName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->printCallingPackagesList(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_c
    const-string v1, " mWallpaperBindingFallbackCount ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperBindingFallbackCount:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CMF_WALLPAPER:Z

    if-eqz v1, :cond_e

    const-string v1, " mLastColorCodePollingThreadCount ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastColorCodePollingThreadCount:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, " mProductCode ="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mProductCode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_5

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    nop

    :goto_5
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public getAnimatedPkgName()Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAnimatedPkgName userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v2, "WallpaperManagerService"

    const-string v3, "Lock wallpaper data is null. So animated package name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public getCurrentPersonaId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    return v0
.end method

.method public getDCMLauncherEnabled()Z
    .locals 3

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDCMLauncherEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsEnabledDCMLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsEnabledDCMLauncher:Z

    return v0
.end method

.method public getDefaultInfinityWallpaper()Landroid/content/ComponentName;
    .locals 5

    const-string v0, "Black"

    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WallpaperManagerService"

    const-string v3, "IndexOutOfBoundsException occurred on getDefaultInfinityWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Black"

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "WallpaperManagerService"

    const-string v2, "mDeviceColor empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.systemui.infinity.InfinityWallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDesktopMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeviceColor()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDeviceColor:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightHint()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastWallpaper()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLidState()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v2, "getLidState: mInputManagerService == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/16 v2, -0x100

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-lez v0, :cond_1

    return v3

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method public getLockWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperType()I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->semGetWallpaperType(I)I

    move-result v0

    return v0
.end method

.method public getMotionWallpaperPkgName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMotionPkgName userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v1, "WallpaperManagerService"

    const-string v2, "Lock wallpaper data is null. So motion package name is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;
    .locals 6

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    new-array v1, p2, [Ljava/io/File;

    invoke-static {p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeMultiWallpaperFileName(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v3

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to Initialize multiWallpaperLockFiles. length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreloadWallpaperColorCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, "WallpaperManagerService"

    const-string v2, "Lock wallpaper data is null. So color code is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getVideoFilePath(I)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoFilePath userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v1, "WallpaperManagerService"

    const-string v2, "Lock wallpaper data is null. So video file path is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getVideoPackage(I)Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoFilePath userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " which= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string v2, "WallpaperManagerService"

    const-string v3, "Lock wallpaper data is null. So video pkg is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public getVideoThumbnailFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
    .locals 7

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setVideoWallpaperData(Ljava/io/File;)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    :cond_0
    move-object v3, v1

    const/high16 v4, 0x3c000000    # 0.0078125f

    :try_start_0
    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v3, v4

    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoFileDescriptor() userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",pfd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v3

    :catch_0
    move-exception v4

    const-string v5, "WallpaperManagerService"

    const-string v6, "getVideoFileDescriptor() FileNotFoundException"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_2
    const-string v2, "WallpaperManagerService"

    const-string v3, "Lock wallpaper data is null. So video file descriptor is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 14

    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "read wallpaper"

    move-object v10, p1

    invoke-direct {v8, v0, v10, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforceCallingOrSelfPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v10, p1

    :goto_0
    move/from16 v11, p3

    move/from16 v12, p5

    invoke-direct {v8, v12, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v13

    nop

    if-eqz v13, :cond_1

    iget v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p2

    move v2, v11

    move-object/from16 v3, p4

    move v4, v12

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperColors(II)Landroid/app/WallpaperColors;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaperColors: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    and-int/lit8 v0, p1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getWallpaperColors"

    const/4 v8, 0x0

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    and-int/lit8 v3, p1, 0x3

    const/16 v4, 0x10

    if-ne v3, v1, :cond_4

    and-int/lit8 v3, p1, 0x1c

    if-ne v3, v4, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    and-int/lit8 v3, p1, 0x1c

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v3

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    and-int/lit8 v3, p1, 0x1c

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v3

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    :cond_7
    and-int/lit8 v3, p1, 0x1c

    const/4 v4, 0x0

    and-int/lit8 v5, p1, 0x3

    if-ne v5, v1, :cond_8

    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultLockImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)Z

    move-result v1

    move v4, v1

    :cond_8
    invoke-direct {p0, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->shouldExtractColor(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)Z

    move-result v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_9

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColor(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_9
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getThemeColorsLocked(Landroid/app/WallpaperColors;)Landroid/app/WallpaperColors;

    move-result-object v2

    monitor-exit v3

    return-object v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getWallpaperHintsInArea(I)[I
    .locals 2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperHintsInArea(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)[I

    move-result-object v1

    return-object v1
.end method

.method public getWallpaperIdForUser(II)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperIdForUser"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    and-int/lit8 v0, p1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    and-int/lit8 v2, p1, 0x1c

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    and-int/lit8 v2, p1, 0x3

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    move-object v0, v1

    goto :goto_4

    :cond_3
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_5

    and-int/lit8 v2, p1, 0x1c

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    and-int/lit8 v2, p1, 0x3

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    :goto_2
    move-object v0, v1

    goto :goto_4

    :cond_5
    and-int/lit8 v2, p1, 0x3

    if-ne v2, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_3
    move-object v0, v1

    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v2, :cond_7

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    :cond_7
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIIZ)Landroid/os/ParcelFileDescriptor;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    const-string v0, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWallpaper which="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " wallpaperUserId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " wpType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " index="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isDexEnabled="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopModeEnabled(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string v13, "getWallpaper"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    move v10, v7

    invoke-static/range {v8 .. v14}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v0, v3, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    and-int/lit8 v0, v3, 0x3

    if-ne v0, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v0, 0x0

    and-int/lit8 v9, v3, 0x1c

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    and-int/lit8 v9, v3, 0x3

    if-ne v9, v7, :cond_2

    :try_start_0
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    move-object v0, v9

    goto :goto_4

    :cond_3
    sget-boolean v9, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v9, :cond_5

    and-int/lit8 v9, v3, 0x1c

    const/16 v11, 0x10

    if-ne v9, v11, :cond_5

    and-int/lit8 v9, v3, 0x3

    if-ne v9, v7, :cond_4

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_2

    :cond_4
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    :goto_2
    move-object v0, v9

    goto :goto_4

    :cond_5
    and-int/lit8 v9, v3, 0x3

    if-ne v9, v7, :cond_6

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_3

    :cond_6
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_3
    move-object v0, v9

    :goto_4
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v11, v0

    const/4 v12, 0x0

    if-nez v11, :cond_7

    and-int/lit8 v0, v3, 0x1c

    const/4 v13, 0x0

    invoke-direct {v1, v6, v13, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    if-nez v11, :cond_7

    monitor-exit v8

    return-object v12

    :cond_7
    const-string v0, "WallpaperManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get index of which = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", isCopied = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isCopied:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p7, :cond_8

    and-int/lit8 v0, v3, 0x3

    if-ne v0, v7, :cond_8

    iget-boolean v0, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isCopied:Z

    if-eqz v0, :cond_8

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v12

    :cond_8
    if-eqz v4, :cond_9

    :try_start_1
    const-string/jumbo v0, "width"

    iget v7, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "height"

    iget v7, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    invoke-static {v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$2700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_a
    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    sget-boolean v7, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v7, :cond_b

    if-ne v5, v10, :cond_b

    iget-object v7, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    move-object v0, v7

    :cond_b
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    const/high16 v7, 0x10000000

    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v7

    :cond_d
    :goto_6
    :try_start_3
    const-string v7, "WallpaperManagerService"

    const-string v10, "cropFile is not exist."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v8

    return-object v12

    :goto_7
    nop

    const-string v7, "WallpaperManagerService"

    const-string v10, "Error getting wallpaper"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v8

    return-object v12

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public getWallpaperIndexOf(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;III)Landroid/os/ParcelFileDescriptor;
    .locals 11

    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "read wallpaper"

    move-object v10, p1

    invoke-direct {v8, v0, v10, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforceCallingOrSelfPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v10, p1

    :goto_0
    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperInfo"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidthHint()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    if-nez v7, :cond_1

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    move-object v7, v6

    :cond_1
    if-eqz v7, :cond_2

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    monitor-exit v0

    return v8

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v0

    return v6

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public initLockWallpaper()V
    .locals 4

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLockWallpaper userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initLockWallpaperData(I)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    return-void
.end method

.method initialize()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    const-string v0, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSettingsLocked is called for user -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void
.end method

.method public initializeKnoxWallpaper(I)V
    .locals 0

    return-void
.end method

.method public isDefaultInfinityComponent(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isDefaultInfinityWallpaper(Landroid/content/ComponentName;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultInfinityComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isDesktopMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDesktopModeEnabled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsDesktopMode:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopMode:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabledMultiLockWallpaper()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isExternalInfinityComponent(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExternalInfinityNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public isInfinityComponent(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infinity componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isExternalInfinityComponent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultInfinityComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInfinityWallpaper(Landroid/content/ComponentName;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isInfinityWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityWallpaper(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isInfinityWallpaperEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isInfinityWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSameWithCallingPackageName(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperChangeAllowed(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    const-string/jumbo v7, "no_set_wallpaper"

    invoke-virtual {v5, v7, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    xor-int/2addr v0, v7

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public isVideoWallpaper()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoWallpaper userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isVideoWallpaper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "WallpaperManagerService"

    const-string v3, "Lock wallpaper data is null. So kwp can not be determined"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_0
    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadKnoxWallpaperSettings(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x11

    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v1, v2

    :goto_0
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNeedToRebindKnoxWallpaper:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->rebindKnoxWallpaperIfNeeded(I)V

    :cond_3
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " postponing showing wallpaper for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeBackupWallpaper(II)I
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWhichInvalidation(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "makeBackupWallpaper with invalidate which"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeBackupWallpaper, which=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    const-string v2, "WallpaperManagerService"

    const-string v3, "backup data couldn\'t exceeds 10"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeBackupWallpaperKeyLocked()I

    move-result p2

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v5, 0x1

    nop

    :cond_3
    move v2, v5

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current wallpaper data is null, isLiveWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    and-int/lit8 v3, p1, 0x3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    return p2

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v4, "WallpaperManagerService"

    const-string v5, "currentWallpaperData is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveBackupWallpaperFile(IIILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "WallpaperManagerService"

    const-string/jumbo v6, "saveBackupWallpaperFile is fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastBackupItem(I)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v5

    if-eqz v5, :cond_7

    iget v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    if-ne v6, v1, :cond_7

    iget v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    if-eq v1, p2, :cond_7

    const-string v1, "WallpaperManagerService"

    const-string/jumbo v6, "update previous item\'s reality key"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    :cond_7
    invoke-direct {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMakeSettingValueMap(II)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->setSettingData(ILjava/util/HashMap;)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLockedForBackupData(I)V

    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish requestBackupWallpaper. key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method makeWallpaperIdLocked()I
    .locals 1

    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    return v0
.end method

.method notifyLockWallpaperChanged(I)V
    .locals 6

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLockWallpaperChanged type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManagerCallback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWallpaperChanged() fail. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.spage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendLockWallpaperLog(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUpdateForcedForPersona:Z

    :cond_2
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onRemoveUser(I)V
    .locals 7

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onThemeSettingsChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theme_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-direct {p0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->needUpdateLocked(Landroid/app/WallpaperColors;I)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

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

.method public onUnlockUser(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v3, :cond_0

    or-int/lit8 v1, v1, 0x10

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$11;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-static {}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "onUnlockUser: default operator wallpaper should be set."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "onUnlockUser: start KEYGUARD_WALLPAPER_UPDATOR"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.keyguardwallpaperupdator.MultipleWallpaperContentProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v4, "onUnlockUser: start KEYGUARD_WALLPAPER_UPDATOR done."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUnlockUser:  unable to call KeyguardWallpaperUpdator CP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetMultipleWallpaperSettingIfNeeded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public restoreBackupWallpaper(ILjava/lang/String;)Z
    .locals 10

    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreBackupWallpaper,  key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataList(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v3, "WallpaperManagerService"

    const-string v4, "backupWallpaperDataList is null - ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WallpaperManagerService"

    const-string v4, "backupWallpaperDataList is empty - ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v2, "WallpaperManagerService"

    const-string v5, "keyMatchData is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreBackupWallpaperInternal(ILjava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataGivenRealityKey(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v4

    if-eqz v4, :cond_3

    iput v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    :cond_3
    return v2

    :cond_4
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    invoke-direct {p0, v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v7, "reality data is null. done"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperDataGivenRealityKey(II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v3

    :cond_6
    const/4 v7, -0x1

    if-eq v4, v3, :cond_7

    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    :cond_7
    iput v7, v4, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    iget v8, v6, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    iget v9, v6, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    invoke-direct {p0, v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeBackupWallpaperData(II)V

    invoke-direct {p0, v3, v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFileName(Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;II)V

    iput v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    iput v9, v3, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLockedForBackupData(I)V

    return v2
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 19

    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v0, v2, :cond_e

    const-string/jumbo v0, "res:"

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v6, v0

    const/4 v0, 0x0

    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v8, v0

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-lez v5, :cond_2

    if-lez v7, :cond_2

    sub-int v10, v7, v5

    if-le v10, v9, :cond_2

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v10, v0

    if-eqz v6, :cond_e

    if-eqz v8, :cond_e

    if-eqz v10, :cond_e

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object v14, v0

    move-object/from16 v15, p0

    :try_start_0
    iget-object v9, v15, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v11, v0

    if-nez v11, :cond_5

    const-string v0, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "couldn\'t resolve identifier pkg="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ident="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v13, :cond_3

    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_3
    if-eqz v14, :cond_4

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_4
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v2, 0x0

    return v2

    :cond_5
    move-object/from16 v16, v2

    :try_start_1
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v12, v0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    const v0, 0x8000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v14, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_7
    const-string v2, "WallpaperManagerService"

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored wallpaper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    nop

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "IOException while restoring wallpaper "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v13, :cond_8

    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_8
    if-eqz v14, :cond_9

    :goto_1
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_9
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v13, :cond_a

    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_a
    if-eqz v14, :cond_9

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v13, :cond_b

    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_b
    if-eqz v14, :cond_9

    goto :goto_1

    :goto_2
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v13, :cond_c

    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_c
    if-eqz v14, :cond_d

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_d
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_e
    move-object/from16 v15, p0

    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public semGetWallpaperColorInArea(ILandroid/graphics/Rect;)I
    .locals 9

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v1, :cond_0

    or-int/lit8 p1, p1, 0x10

    :cond_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "semGetWallpaperColorInArea wallpaper bitmap is null, so generate new bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateResizedBitmap(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_1
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropedBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    const-string v3, "WallpaperManagerService"

    const-string/jumbo v4, "semGetWallpaperColorInArea fail to generate cropped bitmap"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapWithRotate start bitmapWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , bitmapHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSupportInConsistencyWallpaper()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v5, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBitmapWithRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getResizedRect(Landroid/graphics/Rect;Landroid/view/DisplayInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "WallpaperManagerService"

    const-string v7, "getMeanColorInArea start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v5}, Landroid/app/WallpaperColors;->getMeanColorInArea(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v0

    const-string v6, "WallpaperManagerService"

    const-string v7, "getMeanColorInArea end"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "semGetWallpaperColorInArea end result width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", color = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    goto :goto_0

    :cond_5
    const-string v2, "WallpaperManagerService"

    const-string/jumbo v3, "semGetWallpaperColorInArea wallpaper data is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public semGetWallpaperType(I)I
    .locals 5

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "which : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", return type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (called by userId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    return v2

    :cond_0
    const-string v2, "WallpaperManagerService"

    const-string v3, "Lock wallpaper data is null. So, lock wallpaper type is -1."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method

.method public sendWindowWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WallpaperManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName is null or empty. packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnimatedWallpaper pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    return-void
.end method

.method public setDCMLauncherEnabled(Z)V
    .locals 3

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDCMLauncherEnabled isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Current value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsEnabledDCMLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsEnabledDCMLauncher:Z

    return-void
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v5, 0x11

    invoke-direct {p0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x9

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    move-object v2, v3

    :goto_0
    if-lez p1, :cond_7

    if-lez p2, :cond_7

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move p1, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move p2, v5

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v5, :cond_3

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v5, :cond_6

    :cond_3
    iput p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    :try_start_1
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v4, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    :cond_5
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-boolean v4, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 6

    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v5, 0x11

    invoke-direct {p0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x9

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    move-object v2, v3

    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_6

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setFolderState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setInAmbientMode(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getSupportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setInfinityWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public setKWPTypeLiveWallpaper(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setKWPTypePreload(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 5

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "setLockWallpaperCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    if-ne v2, p1, :cond_0

    const-string v1, "WallpaperManagerService"

    const-string v4, "IWallpaperManagerCallback is already added."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName is null or empty. packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMotionWallpaper pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    return-void
.end method

.method public setPreloadWallpaper(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreloadWallpaper userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preloadType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " colorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    iput p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    iput-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->cleanUpKWPFiles(I)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreloadWallpaper colorCode is null or empty. And maybe the preload type is wrong. preloadType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " colorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreloadedWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;II)Landroid/os/ParcelFileDescriptor;
    .locals 20

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const-string v5, "changing wallpaper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move/from16 v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move v15, v0

    move/from16 v18, p9

    invoke-virtual/range {v7 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public setSWPTypePreload(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSettingsSystemUiTransparency(ILjava/lang/String;)V
    .locals 3

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I

    invoke-static {v0, p2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void
.end method

.method public setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoLockscreenWallpaper() packageName is null or empty. videoFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", themePackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v11, 0x1

    invoke-direct {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v0, :cond_2

    move v0, v11

    goto :goto_0

    :cond_2
    move v0, v12

    :goto_0
    move v13, v0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoLockscreenWallpaper() videoFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", themePackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {v7, v10, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    const/16 v0, 0x12

    invoke-direct {v7, v10, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v16

    if-eqz v13, :cond_3

    move-object/from16 v1, v16

    goto :goto_1

    :cond_3
    move-object v1, v15

    :goto_1
    move-object v0, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v14

    move v5, v10

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_6

    if-eqz v13, :cond_4

    move-object v1, v15

    goto :goto_2

    :cond_4
    move-object/from16 v1, v16

    :goto_2
    if-nez v13, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    move v6, v12

    :goto_3
    move-object v0, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v14

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_6
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;II)Landroid/os/ParcelFileDescriptor;
    .locals 19

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const-string v5, "changing wallpaper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move/from16 v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move v15, v0

    move/from16 v18, p9

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIII)Landroid/os/ParcelFileDescriptor;
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIIIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIIIZ)Landroid/os/ParcelFileDescriptor;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move/from16 v9, p4

    move/from16 v10, p6

    move/from16 v11, p11

    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWallpaper() name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cropHint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " allowBackup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " which=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p9

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p10

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " wpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " current userId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isDexEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopModeEnabled(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.SET_WALLPAPER"

    invoke-direct {v7, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    and-int/lit8 v1, v10, 0x3

    if-eqz v1, :cond_c

    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WallpaperManagerService"

    const-string/jumbo v4, "setWallpaperIndexOf Don\'t tell anyone KeyguardWallpaperUpdator is alive while in DeX mode."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v15, 0x0

    if-nez v0, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v15, v15, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_a

    goto :goto_0

    :goto_1
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-direct {v7, v8, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateTransparencySettingIfNeed(Ljava/lang/String;I)V

    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    and-int/lit8 v0, v10, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :try_start_0
    invoke-direct {v7, v5, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {v7, v5, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object v15, v6

    :goto_3
    move-object/from16 v4, p7

    move/from16 v5, p12

    goto/16 :goto_9

    :cond_4
    :goto_4
    :try_start_1
    invoke-direct {v7, v5, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v2, v0

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_5

    move-object v1, v7

    move-object/from16 v16, v2

    move v2, v5

    move v0, v3

    move-object/from16 v3, v16

    move-object/from16 v17, v4

    move v4, v11

    move/from16 v18, v5

    move v5, v13

    move-object v15, v6

    move v6, v10

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;III)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    move-object/from16 v16, v2

    move v0, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object v15, v6

    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v5, v1

    const-string v1, "com.sec.android.wallpapercropper2"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.android.systemui"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeOriginalSavedFile(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    move-object v1, v7

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-wide v12, v5

    move v5, v14

    move v6, v10

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v1, :cond_9

    move-object/from16 v2, v16

    :try_start_4
    iput-boolean v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iput v10, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v4, p7

    :try_start_5
    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v5, p12

    :try_start_6
    iput-boolean v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    const-string v3, "WallpaperManagerService"

    const-string/jumbo v6, "setWallpaper() updated"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    and-int/lit8 v3, v10, 0x3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7

    and-int/lit8 v3, v10, 0x3

    if-ne v3, v0, :cond_8

    :cond_7
    iput v11, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    :cond_8
    iput-boolean v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isCopied:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v4, p7

    :goto_6
    move/from16 v5, p12

    goto :goto_8

    :cond_9
    move-object/from16 v4, p7

    move/from16 v5, p12

    move-object/from16 v2, v16

    :goto_7
    :try_start_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v17

    return-object v1

    :catchall_5
    move-exception v0

    move-object/from16 v4, p7

    move/from16 v5, p12

    move-object/from16 v2, v16

    :goto_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_6
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object v15, v6

    move-object/from16 v4, p7

    move/from16 v5, p12

    :goto_9
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_9

    :cond_a
    move-object/from16 v4, p7

    move/from16 v5, p12

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid crop rect supplied: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_a
    move-object/from16 v4, p7

    move/from16 v5, p12

    const-string v1, "WallpaperManagerService"

    const-string/jumbo v6, "setWallpaperIndexOf callingPackage is wrong."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_c
    move-object/from16 v4, p7

    move/from16 v5, p12

    const-string v1, "Must specify a valid wallpaper category to set"

    const-string v2, "WallpaperManagerService"

    const-string v6, "Must specify a valid wallpaper category to set"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify a valid wallpaper category to set"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public settingsRestored()V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore wallpaper: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->stopObserving(Landroid/content/Context;)V

    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    :cond_1
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDesktopLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSubDisplayLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public switchPersonaWallpaper(IZ)V
    .locals 3

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchPersonaWallpaper is called for personaId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUpdateForcedForPersona:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v4, p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLidState()I

    move-result v4

    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x0

    const-string v5, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mCurrentFolderState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x9

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    :cond_2
    sget-boolean v5, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v5, :cond_3

    invoke-direct {p0, p1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    move-object v4, v5

    :goto_1
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    :cond_4
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_6

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopSingleMode()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, p1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    const/16 v7, 0xa

    invoke-direct {p0, p1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    :goto_2
    goto :goto_3

    :cond_6
    sget-boolean v7, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v7, :cond_7

    invoke-direct {p0, p1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    const/16 v7, 0x12

    invoke-direct {p0, p1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v6

    invoke-direct {p0, p1, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v7

    goto :goto_2

    :goto_3
    iget-object v8, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    if-nez v8, :cond_8

    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/Handler;)V

    iput-object v8, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    iget-object v8, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;->startObserving(Landroid/content/Context;)V

    :cond_8
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "theme_mode"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mThemeMode:I

    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v8}, Landroid/os/FileObserver;->startWatching()V

    :cond_9
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentFolderState:I

    if-nez v8, :cond_a

    const/16 v2, 0x10

    nop

    :cond_a
    or-int/2addr v3, v2

    invoke-direct {p0, v6, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    or-int v3, v11, v2

    invoke-direct {p0, v7, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateOldKeyguardWallpaper(Z)V

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3f1

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_0
    move-object v11, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v11

    move-object v5, v8

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_1
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x40000

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v0, v11, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    const/4 v12, 0x1

    if-nez v0, :cond_1

    :try_start_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p2

    :try_start_3
    invoke-virtual {v7, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_2

    :cond_1
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v15, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v16

    const-string/jumbo v17, "wallpaper_lock_orig"

    const-string/jumbo v18, "wallpaper_lock"

    const/16 v19, 0x1

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v1

    invoke-direct {v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v7

    move-object v5, v10

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    goto :goto_2

    :cond_2
    move-object/from16 v13, p2

    :goto_2
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    :goto_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method systemReady()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_0
    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v0

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v7, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$6;

    invoke-direct {v8, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$6;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v0

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$7;

    invoke-direct {v9, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$7;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUserChanged:Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$8;

    invoke-direct {v9, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$8;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v10, "WallpaperManagerService"

    invoke-interface {v0, v9, v10}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_DDI_WALLPAPER:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SUPPORT_CMF_WALLPAPER:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateDeviceColor()V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->registerOMCWallpaperUpdatedReceiver()V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$9;

    invoke-direct {v9, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$9;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-static {v0, v9}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object v15, v9

    const-string v9, "com.samsung.android.systemui.ACTION_STATUS_LOGGING"

    invoke-virtual {v15, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x4

    invoke-virtual {v15, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9, v2, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x240c8400

    move-object v9, v0

    move-object/from16 v16, v15

    move-object v15, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.samsung.android.systemui.ACTION_STATUS_LOGGING"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$10;

    invoke-direct {v11, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$10;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->semGetWallpaperType(I)I

    move-result v4

    invoke-direct {v1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendLockWallpaperLog(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

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

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    nop

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "WallpaperManagerService"

    const-string v5, "fail to restorecon"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-eqz p3, :cond_4

    const-string v4, "android.service.wallpaper.extra.ID"

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v4, :cond_5

    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWallpaperBitmapLocked() : which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v3

    :goto_1
    nop

    const-string v1, "WallpaperManagerService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
