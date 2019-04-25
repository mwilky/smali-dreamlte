.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "SemDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDisplaySolutionManagerService"


# instance fields
.field private final BURNIN_PREVENTION_OFF:Ljava/lang/String;

.field private final BURNIN_PREVENTION_ON_1:Ljava/lang/String;

.field private final BURNIN_PREVENTION_ON_2:Ljava/lang/String;

.field private final BURNIN_PREVENTION_ON_3:Ljava/lang/String;

.field private final BURNIN_PREVENTION_ON_4:Ljava/lang/String;

.field private final BURNIN_PREVENTION_ON_5:Ljava/lang/String;

.field private final COLOR_BLIND_OFF:Ljava/lang/String;

.field private final COLOR_BLIND_ON:Ljava/lang/String;

.field private final DEBUG:Z

.field private final HDR_EFFECT_OFF:Ljava/lang/String;

.field private final HDR_EFFECT_ON_1:Ljava/lang/String;

.field private final HDR_EFFECT_ON_2:Ljava/lang/String;

.field private IRC_MODE_NODE:Ljava/lang/String;

.field private final LDU_OFF:Ljava/lang/String;

.field private final LDU_ON_1:Ljava/lang/String;

.field private final LDU_ON_2:Ljava/lang/String;

.field private final LDU_ON_3:Ljava/lang/String;

.field private final LDU_ON_4:Ljava/lang/String;

.field private final LDU_ON_5:Ljava/lang/String;

.field private final REAL_HDR_OFF:Ljava/lang/String;

.field private final REAL_HDR_ON:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field private final SHOP_MODE_SETTING:Ljava/lang/String;

.field private adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

.field private bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

.field private mAdaptiveScreenModeEnabled:Z

.field private mAlphaBlendingValue:F

.field private mAutoBrightnessMode:Z

.field private mAutoBrightnessModeEnabled:Z

.field private mBlueLightFilterModeEnabled:Z

.field private mBrightnessArray:[F

.field private mBrightnessStringArray:[Ljava/lang/String;

.field private mBurnInPrevention:Z

.field private mBurnInScaleFactorStringArray:[Ljava/lang/String;

.field private mBurnInScaleFactorValueArray:[F

.field private mCalculatedAlphaBlendingValue:F

.field private mColorBlind:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentBrightnessValue:F

.field private mEmergencyModeEnabled:Z

.field private mHDREffect:Z

.field private mHighBrightnessModeEnabled:Z

.field private mHighDynamicRangeEnabled:Z

.field private mLDU:Z

.field private final mLock:Ljava/lang/Object;

.field private mMSCSEnable:Z

.field private mName:Ljava/lang/String;

.field private final mNumberDisplaySolutionBrightnessFactor:I

.field private final mNumberDisplaySolutionBurnInScaleFactor:I

.field private final mNumberDisplaySolutionScaleFactor:I

.field private mPlatformBrightnessValue:F

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingModeEnabled:Z

.field private mRealHDR:Z

.field private final mSCafeVersion:Ljava/lang/String;

.field private mScaleFactor:F

.field private mScaleFactorStringArray:[Ljava/lang/String;

.field private mScaleFactorValueArray:[F

.field private mScreenBrightnessExtendedMaximumConfig:I

.field private mSettingValue:Ljava/lang/String;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

.field private mShopModeEnabled:Z

.field private mTempAB:D

.field private mTitle:Ljava/lang/String;

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplaySolutionServiceConfig:Z

.field private mUseBigDataLoggingServiceConfig:Z

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field private settingsValueEM:F

.field private settingsValuePSM:F

.field private settingsValueString:Ljava/lang/String;

.field private settingsValueStringArray:[Ljava/lang/String;

.field private settingsValueUPSM:F

.field private temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

.field private temp_COLOR_BLIND_ON:Ljava/lang/String;

.field private temp_HDR_EFFECT_ON:Ljava/lang/String;

.field private temp_LDU_ON:Ljava/lang/String;

.field private temp_REAL_HDR_ON:Ljava/lang/String;

.field private temp_mName:Ljava/lang/String;

.field private temp_mTitle:Ljava/lang/String;

.field private temt_mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mShopModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    const-string v0, "/sys/class/lcd/panel/irc_mode"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const-string v0, "color_blind_on"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    const-string v0, "color_blind_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    const-string/jumbo v0, "real_hdr_on"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    const-string/jumbo v0, "real_hdr_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    const-string v0, "ldu_on_1"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_1:Ljava/lang/String;

    const-string v0, "ldu_on_2"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_2:Ljava/lang/String;

    const-string v0, "ldu_on_3"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_3:Ljava/lang/String;

    const-string v0, "ldu_on_4"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_4:Ljava/lang/String;

    const-string v0, "ldu_on_5"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_5:Ljava/lang/String;

    const-string v0, "ldu_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_OFF:Ljava/lang/String;

    const-string v0, "hdr_effect_on_1"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_ON_1:Ljava/lang/String;

    const-string v0, "hdr_effect_on_2"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_ON_2:Ljava/lang/String;

    const-string v0, "hdr_effect_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_OFF:Ljava/lang/String;

    const-string v0, "burnin_prevention_on_1"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON_1:Ljava/lang/String;

    const-string v0, "burnin_prevention_on_2"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON_2:Ljava/lang/String;

    const-string v0, "burnin_prevention_on_3"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON_3:Ljava/lang/String;

    const-string v0, "burnin_prevention_on_4"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON_4:Ljava/lang/String;

    const-string v0, "burnin_prevention_on_5"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON_5:Ljava/lang/String;

    const-string v0, "burnin_prevention_off"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_OFF:Ljava/lang/String;

    const-string/jumbo v0, "screen_mode_automatic_setting"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v0, "shopdemo"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SHOP_MODE_SETTING:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    const/16 v3, 0xb

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionScaleFactor:I

    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBurnInScaleFactor:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBrightnessFactor:I

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessStringArray:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    if-eqz v6, :cond_1

    new-instance v6, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v6, :cond_2

    new-instance v6, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v6, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    :cond_2
    iget v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    if-le v6, v0, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    :cond_3
    const-string v0, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUseMdnieScenarioControlServiceConfig : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUseBigDataLoggingServiceConfig : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mScreenBrightnessExtendedMaximumConfig : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "shopdemo"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "high_brightness_mode_pms_enter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "blue_light_filter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method private calculateAlphaBlendingValue(F)F
    .locals 8

    const/high16 v0, 0x43000000    # 128.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x3ffab367a0f9096cL    # 1.6688

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x404d2c8b43958106L    # 58.348

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    goto :goto_0

    :cond_0
    const-wide v0, 0x3ffe793dd97f62b7L    # 1.9046

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    const-wide v4, 0x3fa212d77318fc50L    # 0.0353

    float-to-double v6, p1

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    :goto_0
    const-wide v0, 0x3ec92a7380000000L    # 3.000000106112566E-6

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    mul-double/2addr v0, v2

    const-wide v2, 0x3f689374bc6a7efaL    # 0.003

    iget-wide v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3febe28240b78034L    # 0.8714

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCalculatedAlphaBlendingValue:F

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCalculatedAlphaBlendingValue:F

    return v0
.end method

.method private controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string v2, "application"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    const-string v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    const-string v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private getting_auto_brightness_mode_enabled()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    return v1
.end method

.method private getting_platform_brightness_value()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPlatformBrightnessValue:F

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPlatformBrightnessValue:F

    return v1
.end method

.method private setting_is_changed()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shopdemo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mShopModeEnabled:Z

    const-string v1, "low_power"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    const-string v1, "emergency_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    const-string v1, "SemDisplaySolutionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHighBrightnessModeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mBlueLightFilterModeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mHighDynamicRangeEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v1, "SemDisplaySolutionManagerService"

    const-string v4, "IRC Mode : flat_gamma_mode"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v1, "SemDisplaySolutionManagerService"

    const-string v4, "IRC Mode : moderato_mode"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string v1, "limit_brightness_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "100, 100"

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "2016B"

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "2017A"

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "SemDisplaySolutionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSCafeVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v1, v2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v1, v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_8

    :catch_0
    move-exception v1

    const-string v4, "SemDisplaySolutionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read mSCafeVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    const/4 v4, 0x4

    const/16 v5, 0x64

    const/4 v6, 0x3

    const/16 v7, 0x5f

    const/4 v8, 0x2

    const/16 v9, 0x5a

    const/16 v10, 0x55

    const/16 v11, 0x50

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v11, :cond_a

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_9

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v10, :cond_b

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v3

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_c

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v8

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_9

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_d

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v6

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_9

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_e

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    :cond_e
    :goto_9
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    const-string/jumbo v2, "settings"

    const-string v3, "PSM"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_f
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v11, :cond_10

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v10, :cond_11

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v3

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_a

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_12

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v8

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_a

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_13

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v6

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_a

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_14

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    :cond_14
    :goto_a
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    const-string/jumbo v2, "settings"

    const-string v3, "UPSM"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    const-string/jumbo v2, "settings"

    const-string v3, "EM"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_18

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    const-string/jumbo v2, "settings"

    const-string v3, "DEFAULT"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_b
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


# virtual methods
.method public getAlphaBlendingValue()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCurrentBrightnessValue:F

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCurrentBrightnessValue:F

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->calculateAlphaBlendingValue(F)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAlphaBlendingValue:F

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAlphaBlendingValue:F

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getGalleryModeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVGalleryEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return v0
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return v0
.end method

.method public onAutoCurrentLimitOffMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffMode(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffMode(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAutoCurrentLimitStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDetailVeiwStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHdrStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setHdrMode(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setHdrMode(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVGalleryEnable:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIRCompensationMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_auto_brightness_mode_enabled()Z

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_platform_brightness_value()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_20

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v6, "color_blind_on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "color_blind_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v8, "real_hdr_on"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v8, "real_hdr_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "hdr_effect_on_1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "hdr_effect_on_2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "hdr_effect_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_on_1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_on_2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_on_3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_on_4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_on_5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_on_1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_on_2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_on_3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_on_4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_on_5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "ldu_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_4

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    goto :goto_4

    :cond_6
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "burnin_prevention_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto :goto_4

    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "hdr_effect_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    goto :goto_4

    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v8, "real_hdr_on"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v8, "real_hdr_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_4

    :cond_c
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "color_blind_on"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    goto :goto_4

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v8, "color_blind_off"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    :cond_e
    :goto_4
    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "ColorBlind"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, ColorBlind, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_f
    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "RealHDR"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, RealHDR, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    const/4 v8, 0x2

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string v6, "hdr_effect_on_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v5, v5, v7

    const-string v6, "application"

    const-string v8, "HDREffect_1"

    invoke-direct {p0, v5, v6, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, HDREffect_1, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string v6, "hdr_effect_on_2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v2, :cond_12

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v5, v5, v7

    const-string v6, "application"

    const-string v8, "HDREffect_2"

    invoke-direct {p0, v5, v6, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_12
    if-nez v2, :cond_20

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v5, v5, v8

    cmpg-float v5, v3, v5

    if-gez v5, :cond_13

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v5, v5, v7

    const-string v6, "application"

    const-string v8, "HDREffect_2"

    invoke-direct {p0, v5, v6, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    const/high16 v5, 0x43800000    # 256.0f

    div-float v6, v5, v3

    const-string v7, "application"

    const-string v8, "HDREffect_2"

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v6, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float/2addr v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " auto_brightness_enabled : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " platform_brightness_value : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_14
    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    if-eqz v5, :cond_19

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mShopModeEnabled:Z

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v9, "burnin_prevention_on_1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "BurnInPrevention_1"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, BurnInPrevention_1, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v6, "burnin_prevention_on_2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v5, v5, v7

    const-string v6, "application"

    const-string v8, "BurnInPrevention_2"

    invoke-direct {p0, v5, v6, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, BurnInPrevention_2, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_16
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v6, "burnin_prevention_on_3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v5, v5, v8

    const-string v6, "application"

    const-string v7, "BurnInPrevention_3"

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, BurnInPrevention_3, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_17
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v6, "burnin_prevention_on_4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "BurnInPrevention_4"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, BurnInPrevention_4, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_18
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v6, "burnin_prevention_on_5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "BurnInPrevention_5"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultipleScreenBrightness , application, BurnInPrevention_5, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_19
    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mShopModeEnabled:Z

    const/16 v6, 0xa

    if-nez v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "DEFAULT"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Normal Mode setMultipleScreenBrightness , application, DEFAULT, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1a
    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mShopModeEnabled:Z

    if-eqz v5, :cond_20

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v6, "ldu_on_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "LDU_1"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shop Mode setMultipleScreenBrightness , application, LDU_1, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v6, "ldu_on_2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "LDU_1"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shop Mode setMultipleScreenBrightness , application, LDU_1, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v6, "ldu_on_3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "LDU_1"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shop Mode setMultipleScreenBrightness , application, LDU_1, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v6, "ldu_on_4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "LDU_1"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shop Mode setMultipleScreenBrightness , application, LDU_1, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_1e
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v6, "ldu_on_5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "LDU_1"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shop Mode setMultipleScreenBrightness , application, LDU_1, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v5, v5, v6

    const-string v7, "application"

    const-string v8, "DEFAULT"

    invoke-direct {p0, v5, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string v5, "SemDisplaySolutionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shop Mode setMultipleScreenBrightness , application, DEFAULT, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_5
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setScreenBrightnessForPreview(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "2016B"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2017A"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    const-string v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenBrightnessForPreview : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    const-string/jumbo v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x5f

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    const-string/jumbo v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    const-string/jumbo v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x55

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const-string/jumbo v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v4

    const-string/jumbo v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    const-string/jumbo v2, "settings_preview"

    const-string v3, "DEFAULT"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    :cond_6
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

.method public setVideoModeEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
