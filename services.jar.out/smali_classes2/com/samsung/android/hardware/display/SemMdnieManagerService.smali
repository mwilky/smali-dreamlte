.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;,
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMdnieManagerService"


# instance fields
.field private final COLOR_LENS_MAX_COLOR:I

.field private final COLOR_LENS_MAX_LEVEL:I

.field private final COMMAND_FILE:Ljava/lang/String;

.field private final DEBUG:Z

.field private final DEV_POC:Ljava/lang/String;

.field private EFS_MDNIE_INFO:Ljava/lang/String;

.field private EFS_PANEL_INFO:Ljava/lang/String;

.field private final FACTORY_DEFAULT_INDEX_VALUE:I

.field private final FACTORY_WHITE_INDEX_SIZE:I

.field private final LCD_SRGB_MODE:I

.field private final MAX_POC_INDEX:I

.field private final MDNIE_SUPPORT_FUNCTION:I

.field private final NIGHT_MODE_MAX_INDEX:I

.field private final POC_IMAGE_MAX_NUM:I

.field private final POC_WHITE_DEFAULT_VALUE:I

.field private final POC_WHITE_INDEX_SIZE:I

.field private final PRESET_WHITE_INDEX_SIZE:I

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_APPLICATION_COMPLETE:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_APPLICATION_START:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_DEFAULT_POSITION:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_INDEX:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_SUPPORT:Ljava/lang/String;

.field private final SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field private final SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

.field private final SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

.field private final SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

.field private final SYSFS_PANEL_CELL_ID:Ljava/lang/String;

.field private final SYSFS_POC_CELL_ID:Ljava/lang/String;

.field private final SYSFS_POC_CURRENT_INDEX:Ljava/lang/String;

.field private final SYSFS_POC_INFO:Ljava/lang/String;

.field private final SYSFS_POC_ORIGINAL_VECTOR:Ljava/lang/String;

.field private final SYSFS_POC_READ_COMPLETE:Ljava/lang/String;

.field private final SYSFS_POC_STATUS:Ljava/lang/String;

.field private final SYSFS_POC_TOTAL_FAIL_COUNT:Ljava/lang/String;

.field private final SYSFS_POC_TOTAL_TRY_COUNT:Ljava/lang/String;

.field private final SYSFS_POC_USER:Ljava/lang/String;

.field private USER_PANEL_INFO:Ljava/lang/String;

.field private final WEAKNESS_SOLUTION_FUNCTION:I

.field private adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

.field private afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mColorVision:Z

.field private mColorVisionColor:I

.field private mColorVisionLevel:I

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentPocIndex:I

.field private mCurtainModeIsRunning:Z

.field private mCustomScrBIndex:I

.field private mCustomScrGIndex:I

.field private mCustomScrRIndex:I

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mFactoryScrBIndex:I

.field private mFactoryScrBIndexSub:I

.field private mFactoryScrGIndex:I

.field private mFactoryScrGIndexSub:I

.field private mFactoryScrIndex:I

.field private mFactoryScrIndexSub:I

.field private mFactoryScrRIndex:I

.field private mFactoryScrRIndexSub:I

.field private final mLock:Ljava/lang/Object;

.field private mMPocElementSize:I

.field private mMdnieCustomized:Z

.field private mMdnieFactorySupported:Z

.field private mMdniePOCCurrentIndex:Z

.field private mMdniePOCFused:Z

.field private mMdniePOCGray:Z

.field private mMdniePOCInfoSupported:Z

.field private mMdniePOCSupported:Z

.field private mMdniePOCUsedExist:Z

.field private mMdnieWhiteRGBSupported:Z

.field private mMdnieWorkingCondition:Z

.field private mModelInfoArray:[I

.field private mModelInfoSize:I

.field private mNegativeColorEnabled:Z

.field private mNightMode:Z

.field private mNightModeIndex:I

.field private mPOCAdjustWhiteRGB:[[I

.field private mPOCSize:I

.field private mPocElementArrayPOC1:[F

.field private mPocElementArrayPOC2:[I

.field private mPocFused:I

.field private mPocIndex:I

.field private mPocScrIndex:I

.field private mPocSupport255:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPresetAdjustWhiteRGB:[[I

.field private mPresetScrIndex:I

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mResourcePocConfig:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field private mSupportBlueFilter:Z

.field private mSupportColorAdjustment:Z

.field private mSupportContentMode:Z

.field private mSupportContentModeGame:Z

.field private mSupportContentModeVideoEnhance:Z

.field private mSupportGrayscale:Z

.field private mSupportHDR:Z

.field private mSupportHMT:Z

.field private mSupportLightNotificationMode:Z

.field private mSupportNegative:Z

.field private mSupportScreeenReadingMode:Z

.field private mSupportScreenCurtain:Z

.field private mSupportScreenMode:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseAfterimageCompensationServiceConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string/jumbo v1, "screen_mode_automatic_setting"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v1, "screen_mode_setting"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_temperature_red"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_temperature_green"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_temperature_blue"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_preset_index"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_poc_index"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_INDEX:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_poc_default_position"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_DEFAULT_POSITION:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_poc_support"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_SUPPORT:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_poc_application_start"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_APPLICATION_START:Ljava/lang/String;

    const-string/jumbo v1, "sec_display_poc_application_complete"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_APPLICATION_COMPLETE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/mode"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/negative"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/night_mode"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/color_lens"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/whiteRGB"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie/light_notification"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/accessibility"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/mode"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/scenario"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/negative"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/outdoor"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/playspeed"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/night_mode"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/color_lens"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/whiteRGB"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

    const-string v1, "/sys/class/mdnie/mdnie1/light_notification"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

    const-string v1, "/dev/poc"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEV_POC:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel/poc"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_STATUS:Ljava/lang/String;

    const-string v1, "/efs/FactoryApp/poc_info"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_INFO:Ljava/lang/String;

    const-string v1, "/efs/poc/current_index"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_CURRENT_INDEX:Ljava/lang/String;

    const-string v1, "/efs/etc/poc/org.vec"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_ORIGINAL_VECTOR:Ljava/lang/String;

    const-string v1, "/efs/FactoryApp/mdnie"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    const-string v1, "/efs/FactoryApp/mdnie1"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

    const-string v1, "/efs/FactoryApp/poc_done"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_READ_COMPLETE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel/cell_id"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_PANEL_CELL_ID:Ljava/lang/String;

    const-string v1, "/efs/etc/poc/cell_id"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_CELL_ID:Ljava/lang/String;

    const-string v1, "/efs/etc/poc/totalfailcount"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_TOTAL_FAIL_COUNT:Ljava/lang/String;

    const-string v1, "/efs/etc/poc/totaltrycount"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_TOTAL_TRY_COUNT:Ljava/lang/String;

    const-string v1, "/efs/FactoryApp/poc_user"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_USER:Ljava/lang/String;

    const-string v1, "/cache/recovery/command"

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COMMAND_FILE:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    const/16 v2, 0xb

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    const/16 v3, 0xc

    iput v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_COLOR:I

    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_LEVEL:I

    const/16 v5, 0x168

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MAX_POC_INDEX:I

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    const-string v5, "65303"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const-string v5, "3"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->WEAKNESS_SOLUTION_FUNCTION:I

    const/4 v5, 0x7

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_WHITE_INDEX_SIZE:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_DEFAULT_INDEX_VALUE:I

    iput v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->PRESET_WHITE_INDEX_SIZE:I

    const/4 v7, 0x6

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->POC_WHITE_INDEX_SIZE:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->POC_WHITE_DEFAULT_VALUE:I

    const/16 v9, 0x24

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->POC_IMAGE_MAX_NUM:I

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_MDNIE_INFO:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCCurrentIndex:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocSupport255:Z

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    const v9, 0x8d8b2

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCSize:I

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    new-array v3, v3, [[I

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    aput-object v9, v3, v6

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    aput-object v9, v3, v8

    new-array v9, v1, [I

    fill-array-data v9, :array_2

    const/4 v10, 0x2

    aput-object v9, v3, v10

    new-array v9, v1, [I

    fill-array-data v9, :array_3

    aput-object v9, v3, v1

    new-array v9, v1, [I

    fill-array-data v9, :array_4

    const/4 v11, 0x4

    aput-object v9, v3, v11

    new-array v9, v1, [I

    fill-array-data v9, :array_5

    const/4 v12, 0x5

    aput-object v9, v3, v12

    new-array v9, v1, [I

    fill-array-data v9, :array_6

    aput-object v9, v3, v7

    new-array v9, v1, [I

    fill-array-data v9, :array_7

    aput-object v9, v3, v5

    new-array v5, v1, [I

    fill-array-data v5, :array_8

    const/16 v9, 0x8

    aput-object v5, v3, v9

    new-array v5, v1, [I

    fill-array-data v5, :array_9

    aput-object v5, v3, v4

    new-array v4, v1, [I

    fill-array-data v4, :array_a

    const/16 v5, 0xa

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_b

    aput-object v4, v3, v2

    iput-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    new-array v2, v7, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_c

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_d

    aput-object v3, v2, v8

    new-array v3, v1, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v10

    new-array v3, v1, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v11

    new-array v3, v1, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v12

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/2addr v3, v10

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_2

    move v3, v8

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    move v3, v8

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    move v3, v8

    goto :goto_4

    :cond_4
    move v3, v6

    :goto_4
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_5

    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v6

    :goto_5
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_6

    move v3, v8

    goto :goto_6

    :cond_6
    move v3, v6

    :goto_6
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_7

    move v3, v8

    goto :goto_7

    :cond_7
    move v3, v6

    :goto_7
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_8

    :cond_8
    move v3, v6

    :goto_8
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_9

    move v3, v8

    goto :goto_9

    :cond_9
    move v3, v6

    :goto_9
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_a

    move v3, v8

    goto :goto_a

    :cond_a
    move v3, v6

    :goto_a
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_b

    move v3, v8

    goto :goto_b

    :cond_b
    move v3, v6

    :goto_b
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    move v3, v8

    goto :goto_c

    :cond_c
    move v3, v6

    :goto_c
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const-string/jumbo v3, "screen_mode_setting"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "sec_display_temperature_red"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "sec_display_temperature_green"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "sec_display_temperature_blue"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "sec_display_preset_index"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "sec_display_poc_index"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;)V

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/mdnie"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    :cond_d
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    :cond_e
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/lcd/panel/poc"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :cond_f
    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/poc/current_index"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCCurrentIndex:Z

    :cond_10
    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/poc_info"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    :cond_11
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    :cond_12
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCStatus()V

    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    and-int/2addr v0, v4

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCInfo()V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "sec_display_poc_default_position"

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    invoke-static {v0, v4, v7, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SYSFS_MDNIE_FACTORY_MDNIE : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mMdnieWhiteRGBSupported - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMdniePOCSupported : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMdniePOCSupported : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mMdniePOCInfoSupported - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_15

    move v0, v8

    goto :goto_d

    :cond_15
    move v0, v6

    :goto_d
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v0, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v0, :cond_16

    iput v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    :cond_16
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    if-ne v0, v1, :cond_17

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    :cond_17
    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->update_cell_id()V

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->update_mdnie_info()V

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v0, :cond_19

    new-instance v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocSupport255:Z

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMPocElementSize : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocElementArrayPOC1:[F

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v1, v6

    :goto_e
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    if-ge v1, v4, :cond_1b

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocElementArrayPOC1:[F

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e012b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoSize:I

    const-string v1, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mModelInfoSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10700e8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    nop

    :goto_f
    move v4, v6

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v6, v4, 0x1

    goto :goto_f

    :cond_1c
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x6
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x3
        0x0
        -0x3
    .end array-data

    :array_4
    .array-data 4
        -0x6
        0x0
        -0x6
    .end array-data

    :array_5
    .array-data 4
        -0x9
        0x0
        -0x9
    .end array-data

    :array_6
    .array-data 4
        -0xc
        0x0
        -0xc
    .end array-data

    :array_7
    .array-data 4
        -0xf
        0x0
        -0xf
    .end array-data

    :array_8
    .array-data 4
        -0x12
        0x0
        -0x12
    .end array-data

    :array_9
    .array-data 4
        -0x15
        0x0
        -0x15
    .end array-data

    :array_a
    .array-data 4
        -0x18
        0x0
        -0x18
    .end array-data

    :array_b
    .array-data 4
        -0x1b
        0x0
        -0x1b
    .end array-data

    :array_c
    .array-data 4
        0x0
        -0x2
        -0x2
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        -0x2
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        -0x4
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        -0x6
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        -0x8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1000(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private checkContentMode(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    nop

    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkScreenMode(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    nop

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPOCInfo()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/efs/FactoryApp/poc_info"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    :cond_0
    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPOCInfo : mPocIndex - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    nop

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v7, "FileReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2
    :goto_3
    goto/16 :goto_8

    :catchall_0
    move-exception v4

    goto/16 :goto_9

    :catch_2
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    :goto_4
    nop

    :goto_5
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_4
    :goto_6
    nop

    :goto_7
    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_7
    move-exception v4

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :goto_8
    return-void

    :goto_9
    nop

    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v5

    const-string v6, "SemMdnieManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BufferedReader Close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_5
    :goto_a
    nop

    :goto_b
    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_c

    :catch_9
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemMdnieManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_6
    :goto_c
    throw v4
.end method

.method private getPOCStatus()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/lcd/panel/poc"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    if-ne v7, v6, :cond_0

    if-nez v4, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    if-eqz v3, :cond_1

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    :cond_1
    const/4 v3, 0x2

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "33"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    if-ne v7, v6, :cond_2

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :cond_2
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "64"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    if-ne v7, v6, :cond_3

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :cond_3
    const-string v6, "SemMdnieManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPOCStatus : mPocFused - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ischecksum - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mMdniePOCGray - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SemMdnieManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPOCStatus : scrDatas[2].trim() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v8, "64"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPocSupport255 - "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocSupport255:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    nop

    :goto_2
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v7, "FileReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_5
    :goto_4
    goto/16 :goto_9

    :catchall_0
    move-exception v3

    goto/16 :goto_a

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    :goto_5
    nop

    :goto_6
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_5
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v3

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_7
    :goto_7
    nop

    :goto_8
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    :catch_7
    move-exception v3

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :goto_9
    return-void

    :goto_a
    nop

    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_b

    :catch_8
    move-exception v5

    const-string v6, "SemMdnieManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BufferedReader Close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_8
    :goto_b
    nop

    :goto_c
    if-eqz v0, :cond_9

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_d

    :catch_9
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemMdnieManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_9
    :goto_d
    throw v3
.end method

.method private getPocCurrentUser()I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/poc_user"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    const-string v4, "0"

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BufferedReader Close IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string v4, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BufferedReader Close IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_8
    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :goto_4
    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return v1
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-lez v5, :cond_2

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_2
    nop

    :try_start_1
    const-string v6, "SemMdnieManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    goto :goto_7

    :catch_1
    move-exception v2

    const-string v6, "SemMdnieManagerService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v6

    const-string v7, "SemMdnieManagerService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw v2

    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_5
    :goto_7
    return-object v4
.end method

.method private static native nativeMergeVectorPOC(III[I[F)I
.end method

.method private static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    nop

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v7, "FileReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_0
    :goto_3
    goto/16 :goto_8

    :catchall_0
    move-exception v4

    goto/16 :goto_9

    :catch_2
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    :goto_4
    nop

    :goto_5
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_2
    :goto_6
    nop

    :goto_7
    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_7
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :goto_8
    return-object v2

    :goto_9
    nop

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BufferedReader Close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_3
    :goto_a
    nop

    :goto_b
    if-eqz v0, :cond_4

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_c

    :catch_9
    move-exception v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileReader Close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    nop

    :cond_4
    :goto_c
    throw v4
.end method

.method private setFactoryWhiteRGB()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v13

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v15, "/efs/FactoryApp/mdnie"

    invoke-direct {v0, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v0

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v15, " "

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v15, v0, v13

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v8, v15

    const/4 v15, 0x1

    aget-object v15, v0, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v9, v15

    const/4 v15, 0x2

    aget-object v15, v0, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v10, v15

    const-string v15, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrG - "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrB - "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_8

    :cond_0
    :goto_0
    nop

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v13, v0

    const-string v13, "SemMdnieManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "BufferedReader Close IOException : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    nop

    move-object/from16 v17, v3

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v0

    const-string v3, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v15, "FileReader Close IOException : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_1
    :goto_4
    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v0

    const-string v3, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BufferedReader Close IOException : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_2
    :goto_6
    nop

    :goto_7
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v3, v0

    const-string v3, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v17, v3

    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v3, v0

    const-string v3, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BufferedReader Close IOException : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_3
    :goto_9
    nop

    :goto_a
    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v3, v0

    const-string v3, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :goto_b
    if-gtz v8, :cond_6

    const/16 v0, -0x28

    if-lt v8, v0, :cond_6

    if-gtz v9, :cond_6

    if-lt v9, v0, :cond_6

    if-gtz v10, :cond_6

    if-lt v10, v0, :cond_6

    iput v8, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    iput v9, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    iput v10, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    div-int/lit8 v0, v8, 0x3

    neg-int v0, v0

    iput v0, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    iget v0, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    if-ltz v0, :cond_4

    iget v0, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    const/4 v3, 0x7

    if-le v0, v3, :cond_5

    :cond_4
    const/4 v3, 0x0

    iput v3, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    :cond_5
    const-string v0, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v0, v6}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    :goto_c
    move-object v3, v2

    move-object v2, v0

    :goto_d
    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    move-object v13, v0

    const-string v13, "SemMdnieManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferedReader Close IOException : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_7
    :goto_e
    nop

    :goto_f
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    move-object v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileReader Close IOException : "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "SemMdnieManagerService"

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_8
    :goto_10
    throw v2
.end method

.method private setting_is_changed()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iget-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sec_display_temperature_blue"

    invoke-static {v5, v6, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sec_display_preset_index"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "sec_display_poc_index"

    invoke-static {v6, v8, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v8, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_poc_application_start"

    invoke-static {v8, v9, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    const/4 v11, 0x1

    if-eq v9, v10, :cond_1

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v9, :cond_1

    iget v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9, v11}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    goto :goto_0

    :cond_0
    iget v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    if-ne v9, v10, :cond_1

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9, v4}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    :cond_1
    :goto_0
    iget-boolean v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v9, :cond_7

    const-string v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setting_is_changed - R("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "), G("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "), B("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    iput v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    iget-boolean v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v9, :cond_4

    iget-boolean v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    if-eqz v9, :cond_4

    iget v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    if-ltz v9, :cond_2

    iget v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    const/4 v10, 0x6

    if-lt v9, v10, :cond_3

    :cond_2
    iput v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    :cond_3
    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iget v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    aget-object v9, v9, v10

    aget v9, v9, v4

    add-int/2addr v1, v9

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iget v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    aget-object v9, v9, v10

    aget v9, v9, v11

    add-int/2addr v2, v9

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iget v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    aget-object v9, v9, v10

    aget v9, v9, v7

    add-int/2addr v3, v9

    :cond_4
    iget v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    add-int/2addr v9, v5

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v7, 0xc

    if-ltz v9, :cond_5

    if-ge v9, v7, :cond_5

    iput v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v7, v7, v9

    aget v7, v7, v4

    add-int v10, v1, v7

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v7, v7, v9

    aget v7, v7, v11

    add-int v13, v2, v7

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v7, v7, v9

    const/16 v17, 0x2

    aget v7, v7, v17

    add-int v15, v3, v7

    :cond_5
    if-gtz v10, :cond_6

    const/16 v7, -0x28

    if-lt v10, v7, :cond_6

    if-gtz v13, :cond_6

    if-lt v13, v7, :cond_6

    if-gtz v15, :cond_6

    if-lt v15, v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v11, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    iget v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    add-int/2addr v7, v5

    if-ltz v7, :cond_7

    const/16 v9, 0xc

    if-ge v7, v9, :cond_7

    iput v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v9, v9, v7

    aget v4, v9, v4

    add-int/2addr v4, v1

    iget-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v9, v9, v7

    const/4 v11, 0x1

    aget v9, v9, v11

    add-int/2addr v9, v2

    iget-object v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v11, v11, v7

    const/4 v12, 0x2

    aget v11, v11, v12

    :cond_7
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3

    :cond_0
    return v3
.end method

.method private static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    return v4

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    return v4

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    return v4

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3
.end method

.method private update_cell_id()V
    .locals 3

    const-string v0, "SemMdnieManagerService"

    const-string/jumbo v1, "update_cell_id() function call"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "/sys/class/lcd/panel/cell_id"

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/cell_id"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_1
    const-string v0, "/efs/etc/poc/cell_id"

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EFS_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SemMdnieManagerService"

    const-string v1, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/efs/etc/poc/cell_id"

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysfsWriteSting success_1 USER_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , EFS_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/org.vec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/org.vec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SemMdnieManagerService"

    const-string v1, "SYSFS_POC_ORIGINAL_VECTOR).delete() success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/poc_user"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/poc_user"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SemMdnieManagerService"

    const-string v1, "SYSFS_POC_USER).delete() success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/totalfailcount"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/totalfailcount"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SemMdnieManagerService"

    const-string v1, "SYSFS_POC_TOTAL_FAIL_COUNT).delete() success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/totaltrycount"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/totaltrycount"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SemMdnieManagerService"

    const-string v1, "SYSFS_POC_TOTAL_TRY_COUNT).delete() success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/poc_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/poc_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/poc_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SemMdnieManagerService"

    const-string v1, "SYSFS_POC_INFO).delete() success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMdnieFisrtUsed() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMdnieFisrtUsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "SemMdnieManagerService"

    const-string v1, "EFS_PANEL_INFO value is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/efs/etc/poc/cell_id"

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE EFS_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v0, "SemMdnieManagerService"

    const-string v1, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/cell_id"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "/efs/etc/poc/cell_id"

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysfsWriteSting success_2 USER_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , EFS_PANEL_INFO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method

.method private update_mdnie_info()V
    .locals 3

    const-string v0, "SemMdnieManagerService"

    const-string/jumbo v1, "update_mdnie_info"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/poc_user"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPocCurrentUser()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    const/4 v2, -0x1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    :goto_1
    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    :cond_3
    :goto_2
    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update_mdnie_info - mPocScrIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public afpcDataVerify()Z
    .locals 2

    const-string v0, "SemMdnieManagerService"

    const-string v1, "afpcDataVerify"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataVerify()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableNightMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "disableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result v0

    return v0
.end method

.method public enableNightMode(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "enableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result v0

    return v0
.end method

.method public getContentMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getCurrentPocIndex()I
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCCurrentIndex:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    nop

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/poc/current_index"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3

    :goto_1
    nop

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-lez v5, :cond_1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_5

    :catch_1
    move-exception v2

    const-string v6, "SemMdnieManagerService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    nop

    :try_start_2
    const-string v6, "SemMdnieManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v6

    const-string v7, "SemMdnieManagerService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw v2

    :cond_3
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurrentPocIndex:I

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurrentPocIndex:I

    return v2
.end method

.method public getPocSettingValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    return v0
.end method

.method public getScreenMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public getSupportedContentMode()[I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), mSupportContentMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    :cond_0
    new-array v1, v0, [I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v4, 0x6

    aput v4, v1, v2

    const/16 v2, 0x8

    aput v2, v1, v3

    const/4 v2, 0x5

    const/16 v3, 0x9

    aput v3, v1, v2

    :cond_1
    return-object v1
.end method

.method public getSupportedScreenMode()[I
    .locals 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-array v1, v0, [I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    aput v6, v1, v6

    aput v5, v1, v5

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_4

    aput v3, v1, v4

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_4

    aput v4, v1, v6

    aput v3, v1, v5

    :cond_4
    :goto_1
    return-object v1
.end method

.method public isContentModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMdnieFisrtUsed()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/etc/poc/org.vec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    return v0
.end method

.method public isMdniePocFused()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/poc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCStatus()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    return v0
.end method

.method public isMdniePocSupported()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/poc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCStatus()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNightModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

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

.method public setAmoledACL(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    move v0, p1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string p1, "/sys/class/lcd/panel/power_reduce"

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setColorVision(ZII)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    move v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-ltz p2, :cond_1

    const/16 v4, 0xc

    if-gt p2, v4, :cond_1

    if-ltz p3, :cond_1

    const/16 v4, 0x9

    if-gt p3, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v5, "/sys/class/mdnie/mdnie/color_lens"

    invoke-static {v5, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorVision : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    iput p3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    const/4 v5, 0x1

    monitor-exit v4

    return v5

    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method public setContentMode(I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v3, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->disableAFPC()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->enableAFPC()V

    :cond_1
    :goto_0
    const-string v3, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setContentMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    const/4 v3, 0x1

    monitor-exit v2

    return v3

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public setLightNotificationMode(Z)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLightNotificationMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/sys/class/mdnie/mdnie/light_notification"

    invoke-static {v3, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v3

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setNightMode(ZI)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    move v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v4, :cond_1

    if-ltz p2, :cond_1

    const/16 v4, 0xb

    if-gt p2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v5, "/sys/class/mdnie/mdnie/night_mode"

    invoke-static {v5, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNightMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    const/4 v5, 0x1

    monitor-exit v4

    return v5

    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method public setPocCancel()Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "SemMdnieManagerService"

    const-string/jumbo v3, "setPocCancel"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/lcd/panel/poc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "SemMdnieManagerService"

    const-string/jumbo v4, "setPocCancel No SYSFS_POC_STATUS"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v2, :cond_1

    const-string v2, "/sys/class/lcd/panel/poc"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method public setPocSetting(I)Z
    .locals 13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPocSetting index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "SemMdnieManagerService"

    const-string/jumbo v5, "setPocSetting Not support"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v3, -0x1

    if-lt p1, v3, :cond_7

    const/4 v3, 0x4

    if-le p1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, "/efs/etc/poc/org.vec"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    :cond_2
    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    iget-object v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    iget-object v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocElementArrayPOC1:[F

    invoke-static {v2, v3, p1, v6, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->nativeMergeVectorPOC(III[I[F)I

    move-result v3

    const/4 v6, 0x2

    if-nez v3, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v7, :cond_5

    add-int/2addr p1, v5

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    iget-object v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    aget-object v10, v10, p1

    aget v10, v10, v4

    add-int/2addr v7, v10

    iget-object v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    aget-object v10, v10, p1

    aget v10, v10, v5

    add-int/2addr v8, v10

    iget-object v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    aget-object v10, v10, p1

    aget v10, v10, v6

    add-int/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    iget v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    add-int/2addr v10, v11

    if-ltz v10, :cond_3

    const/16 v11, 0xc

    if-ge v10, v11, :cond_3

    iget-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v11, v11, v10

    aget v11, v11, v4

    add-int/2addr v7, v11

    iget-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v11, v11, v10

    aget v11, v11, v5

    add-int/2addr v8, v11

    iget-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v11, v11, v10

    aget v11, v11, v6

    add-int/2addr v9, v11

    :cond_3
    if-gtz v7, :cond_4

    const/16 v11, -0x28

    if-lt v7, v11, :cond_4

    if-gtz v8, :cond_4

    if-lt v8, v11, :cond_4

    if-gtz v9, :cond_4

    if-lt v9, v11, :cond_4

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v11, v6}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sec_display_poc_application_complete"

    invoke-static {v11, v12, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v4, "/efs/FactoryApp/poc_done"

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v4, "SemMdnieManagerService"

    const-string/jumbo v11, "setPocSetting - POC - Success- RGB - Complete"

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v11, "sec_display_poc_application_complete"

    invoke-static {v5, v11, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "SemMdnieManagerService"

    const-string/jumbo v6, "ssetPocSetting - POC - Success- RGB - Fail - Out of Value"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_display_poc_application_complete"

    invoke-static {v6, v7, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v4, "/efs/FactoryApp/poc_done"

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v4, "SemMdnieManagerService"

    const-string/jumbo v6, "setPocSetting  - mMdniePOCGray - Complete"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "sec_display_poc_application_complete"

    invoke-static {v5, v7, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "SemMdnieManagerService"

    const-string/jumbo v6, "setPocSetting  - mMdniePOCGray - Fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    :goto_0
    return v4
.end method

.method public setScreenMode(I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v3, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SemMdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    const/4 v3, 0x1

    monitor-exit v2

    return v3

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeAccessibilityMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeAccessibilityMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const-string v0, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "/sys/class/backlight/panel/weakness_hbm_comp"

    nop

    invoke-static {v0, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeColorBlind"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeColorBlind ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->WEAKNESS_SOLUTION_FUNCTION:I

    if-lez v0, :cond_1

    const-string v0, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    nop

    :cond_0
    invoke-static {v0, v1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    nop

    :cond_2
    invoke-static {v0, v1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite_CB(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeEmergencyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeEmergencyMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setmDNIeNegative(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeNegative"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeNegative ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v0, :cond_0

    const-string v0, "/sys/class/mdnie/mdnie/accessibility"

    nop

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeScreenCurtain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setmDNIeScreenCurtain ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const-string v0, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
