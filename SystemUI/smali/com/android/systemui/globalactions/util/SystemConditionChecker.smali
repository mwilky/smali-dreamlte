.class public Lcom/android/systemui/globalactions/util/SystemConditionChecker;
.super Ljava/lang/Object;
.source "SystemConditionChecker.java"

# interfaces
.implements Lcom/android/systemui/globalactions/util/ConditionChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemConditionChecker"


# instance fields
.field private final mFeatures:Lcom/android/systemui/globalactions/presentation/features/Features;

.field private final mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

.field private final mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/UtilFactory;Lcom/android/systemui/globalactions/presentation/features/Features;Lcom/android/systemui/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/android/systemui/globalactions/presentation/features/Features;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    return-void
.end method

.method private isEnabled(Lcom/android/systemui/globalactions/util/SystemConditions;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemConditionChecker$1;->$SwitchMap$com$samsung$android$globalactions$util$SystemConditions:[I

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/SystemConditions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isPasswordChangeEnforced()Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mFeatures:Lcom/android/systemui/globalactions/presentation/features/Features;

    const-string v1, "SAFETY_CARE"

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->isFOTAAvailableForGlobalActions()Z

    move-result v0

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isShopDemo()Z

    move-result v0

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isUltraPowerSavingMode()Z

    move-result v0

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/ThemeChecker;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/ThemeChecker;->isWhiteTheme()Z

    move-result v0

    return v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/AccessibilityManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/AccessibilityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/AccessibilityManagerWrapper;->isVoiceAssistantMode()Z

    move-result v0

    return v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;->isStrongAuthForLockDown()Z

    move-result v0

    return v0

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;->isCurrentUserSecure()Z

    move-result v0

    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isLockDownInPowerMenu()Z

    move-result v0

    return v0

    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->isDesktopModeDualView()Z

    move-result v0

    return v0

    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/UserManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/UserManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/UserManagerWrapper;->isAllowedSafeBoot()Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;->isFirstnetSIM()Z

    move-result v0

    return v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;->hasAnySim()Z

    move-result v0

    return v0

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;->isSimLock()Z

    move-result v0

    return v0

    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/TSafeLockUtil;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/TSafeLockUtil;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/TSafeLockUtil;->isTSafeLock()Z

    move-result v0

    return v0

    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;->isTabletDevice()Z

    move-result v0

    return v0

    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;->isDomesticOtaMode()Z

    move-result v0

    return v0

    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;->isSimStateAbsent()Z

    move-result v0

    return v0

    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isLockNetworkAndSecurityOn()Z

    move-result v0

    return v0

    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isAirplaneMode()Z

    move-result v0

    return v0

    :pswitch_15
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isMissingPhoneLock()Z

    move-result v0

    return v0

    :pswitch_16
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isBikeMode()Z

    move-result v0

    return v0

    :pswitch_17
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;->isBugReportMode()Z

    move-result v0

    return v0

    :pswitch_18
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;->getKeyguardShowState()Z

    move-result v0

    return v0

    :pswitch_19
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;->isCOMContainerMode()Z

    move-result v0

    return v0

    :pswitch_1a
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;->isDOProvisioningMode()Z

    move-result v0

    return v0

    :pswitch_1b
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;->isValidVersion()Z

    move-result v0

    return v0

    :pswitch_1c
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->isModifying()Z

    move-result v0

    return v0

    :pswitch_1d
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->isEmergencyMode()Z

    move-result v0

    return v0

    :pswitch_1e
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->isUPSMEnabled()Z

    move-result v0

    return v0

    :pswitch_1f
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;->canSetMode()Z

    move-result v0

    return v0

    :pswitch_20
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->isATTFOTAPackageAvailable()Z

    move-result v0

    return v0

    :pswitch_21
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->isKidsHomeMode()Z

    move-result v0

    return v0

    :pswitch_22
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->isBixbyPackageAvailable()Z

    move-result v0

    return v0

    :pswitch_23
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->isBikeModeInstalled()Z

    move-result v0

    return v0

    :pswitch_24
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;->isRMMLocked()Z

    move-result v0

    return v0

    :pswitch_25
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;->isCarrierLockPlusEnabled()Z

    move-result v0

    return v0

    :pswitch_26
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;->isFMMLocked()Z

    move-result v0

    return v0

    :pswitch_27
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;->isSecureKeyguard()Z

    move-result v0

    return v0

    :pswitch_28
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;->isLogoutEnabled()Z

    move-result v0

    return v0

    :pswitch_29
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;->isEncryptionStatusActive()Z

    move-result v0

    return v0

    :pswitch_2a
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;->getMobileDataEnabled()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isEnabled(Ljava/lang/Object;)Z
    .locals 11

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/globalactions/util/SystemConditions;->valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/util/SystemConditions;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->isEnabled(Lcom/android/systemui/globalactions/util/SystemConditions;)Z

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/SystemConditionChecker;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v5, "SystemConditionChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/util/SystemConditions;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
