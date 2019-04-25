.class final Lcom/android/server/sepunion/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final FEATURE_COVER_ACCESSARY_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.nfc_authentication_cover"

.field private static final FEATURE_COVER_CLEARCOVER:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field private static final FEATURE_COVER_GAMEPACK_COVER:Ljava/lang/String; = "com.sec.feature.cover.gamepackcover"

.field private static final FEATURE_COVER_LED_BACK_COVER:Ljava/lang/String; = "com.sec.feature.cover.ledbackcover"

.field private static final FEATURE_COVER_NEONCOVER:Ljava/lang/String; = "com.sec.feature.cover.neoncover"

.field private static final FEATURE_COVER_NFC_LED_COVER:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SECURE_COVER:Ljava/lang/String; = "com.sec.feature.cover.securecover"

.field private static final FEATURE_COVER_SMARTCOVER:Ljava/lang/String; = "com.sec.feature.cover.smartcover"

.field private static final FEATURE_COVER_SVIEWCOVER:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final NFC_LED_COVER_FEATURE_LEVEL:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

.field static final NFC_LED_COVER_LEVEL_BEYOND:I = 0x3c

.field static final NFC_LED_COVER_LEVEL_DREAM:I = 0x1e

.field static final NFC_LED_COVER_LEVEL_GRACE:I = 0x14

.field static final NFC_LED_COVER_LEVEL_GREAT:I = 0x28

.field static final NFC_LED_COVER_LEVEL_HERO:I = 0xa

.field static final NFC_LED_COVER_LEVEL_STAR:I = 0x32

.field private static sDeviceTypeProperty:Ljava/lang/String;

.field private static sHardwareProperty:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/sepunion/cover/Feature;

.field private static sIsClearCoverSystemFeatureEnabled:Z

.field private static sIsDeviceSupportDetectCover:Z

.field private static sIsDeviceSupportQueried:Z

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsNfcAuthSystemFeatureEnabled:Z

.field private static sIsSmartCoverSystemFeatureEnabled:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportGamePackCover:Z

.field private static sIsSupportLEDBackCover:Z

.field private static sIsSupportLEDCover:Z

.field private static sIsSupportLEDCoverLSI:Z

.field private static sIsSupportLEDCoverQCOM:Z

.field private static sIsSupportNeonCover:Z

.field private static sIsSupportNfcLedCover:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportSecureCover:Z

.field private static sIsSupportWindowCover:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sSupportNfcLedCoverLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportWindowCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSViewCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverLSI:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerityCover:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    sput v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/Feature;->getSystemProperties()V

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/Feature;->updateDeviceSupportFeature()V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/sepunion/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    return-object v0
.end method

.method private getSystemProperties()V
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private updateDeviceSupportFeature()V
    .locals 3

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez v0, :cond_3

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerityCover:Z

    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    const-string v0, "/sys/class/sec/expander/expgpio"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverLSI:Z

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverLSI:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCover:Z

    sput-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    :cond_3
    return-void
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportWindowCover:Z

    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSViewCover:Z

    const-string v1, "com.sec.feature.cover.smartcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    const-string v1, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    const-string v1, "com.sec.feature.cover.gamepackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    const-string v1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    const-string v1, "com.sec.feature.cover.securecover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, " Current Feature state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  sIsDeviceSupportVerityCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerityCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sIsSupportWindowCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportWindowCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  sIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sIsSupportLEDCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  sIsSupportLEDCoverQCOM="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  sIsSupportLEDCoverLSI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverLSI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sIsSupportNfcLedCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  sIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  sIsSupportNeonCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sSupportNfcLedCoverLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  sIsSupportGamePackCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sIsSupportLEDBackCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sIsSupportSecureCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getSupportNfcLedCoverLevel()I
    .locals 1

    sget v0, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    return v0
.end method

.method isChinaModel()Z
    .locals 2

    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMobileKeyboardFeatureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isNfcAuthEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    return v0
.end method

.method isRuggedizedFeatureEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isSupportClearCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportDetectCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return v0
.end method

.method isSupportFlipCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    return v0
.end method

.method isSupportGamePackCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    return v0
.end method

.method isSupportLEDBackCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    return v0
.end method

.method isSupportLEDCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCover:Z

    return v0
.end method

.method isSupportLEDCoverLSI()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverLSI:Z

    return v0
.end method

.method isSupportLEDCoverQCOM()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    return v0
.end method

.method isSupportNeonCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    return v0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSViewCover:Z

    return v0
.end method

.method isSupportSecureCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    return v0
.end method

.method isSupportSmartCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportVerifyCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerityCover:Z

    return v0
.end method

.method isSupportWindowCover()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportWindowCover:Z

    return v0
.end method

.method isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
