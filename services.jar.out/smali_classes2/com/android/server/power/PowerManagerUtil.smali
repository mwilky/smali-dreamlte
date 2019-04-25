.class public final Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$History;,
        Lcom/android/server/power/PowerManagerUtil$TraceDumper;,
        Lcom/android/server/power/PowerManagerUtil$Sales;,
        Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    }
.end annotation


# static fields
.field public static final A8SKT_PROJECT:Z

.field public static final A8X_PROJECT:Z

.field public static final A90Q_PROJECT:Z

.field public static final A9XPRO_PROJECT:Z

.field public static final AUTO_BRIGHTNESS_LIMIT_PERFORMANCE_MODE_NONE:I = 0x64

.field public static final AUTO_BRIGHTNESS_LIMIT_PERFORMANCE_MODE_NORMAL:I = 0x5a

.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static final AX_PROJECT:Z

.field public static final BEYOND_PROJECT:Z

.field public static CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z = false

.field public static final CROWN_PROJECT:Z

.field private static final DEBUG_LOW:Z

.field private static final DEBUG_UNKNOWN:Z

.field public static final DREAM_PROJECT:Z

.field public static final ENABLE_SENSOR_WITH_DELAY:Z

.field public static final GRACE_PROJECT:Z

.field public static final GREAT_PROJECT:Z

.field public static final GT58_PROJECT:Z

.field public static final GTS2_PROJECT:Z

.field public static final HERO_PROJECT:Z

.field public static final NOBLE_PROJECT:Z

.field public static final QCOM_PROJECT:Z

.field public static final SEC_FEATURE_AFC:Z

.field public static final SEC_FEATURE_BATTERY_SAVER_V2:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_BATTERY_SW_ASOC:Z

.field public static final SEC_FEATURE_DECOUPLE_FOR_DOZE:Z = true

.field public static final SEC_FEATURE_DEX_DUAL_VIEW:Z = true

.field public static final SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

.field public static final SEC_FEATURE_DUAL_DISPLAY:Z = false

.field private static final SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FEATURE_FORCE_ADJUST_MANUAL_BRIGHTNESS_IN_LOW_LUX:Z

.field public static final SEC_FEATURE_HQM_SEND_DPUC:Z

.field public static final SEC_FEATURE_MARKER_TRACKER:Z

.field public static final SEC_FEATURE_MULTIPLE_LEDS:Z = false

.field public static final SEC_FEATURE_NOT_SUPPORTED_HW_REV:Z

.field public static final SEC_FEATURE_PREVENT_SWELLING:Z

.field public static final SEC_FEATURE_PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Ljava/lang/String;

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_SEAMLESS_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

.field public static SEC_FEATURE_SUSTAINABLE_HBM:Z = false

.field public static final SEC_FEATURE_TOUCH_KEY_LIGHT:Z = true

.field public static final SEC_FEATURE_USE_AFC:Z

.field public static final SEC_FEATURE_USE_GED_DOZE:Z

.field public static final SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

.field public static final SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_USE_WIRELESS_AFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

.field public static final SEC_FEATURE_VZW_DEVICE_QUALITY_STATISTICS_DATA:Z = false

.field public static final SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

.field public static final SEC_FEATURE_WA_COLOR_FADE_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

.field public static final SEC_MANUALTABLE_1:Z

.field public static final SEC_MANUALTABLE_2:Z

.field private static final SHIP_BUILD:Z

.field public static final STAR_PROJECT:Z

.field public static final TABA2XL_PROJECT:Z

.field public static final TABS4_PROJECT:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerUtil"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final USE_AUTO_BRIGHTNESS_DETAIL:Z

.field public static final USE_EBOOK_AUTO_BRIGHTNESS_TABLE:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

.field public static final USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

.field private static final YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

.field private static final YUVA_FEATURE_TAG:Ljava/lang/String; = "CscFeature_Common_ConfigYuva"

.field public static final ZERO2_PROJECT:Z

.field public static final ZERO_PROJECT:Z

.field private static final mBoardPlatform:Ljava/lang/String;

.field public static final mIsMocha:Z

.field private static final mProductName:Ljava/lang/String;

.field public static final mSCafeName:Ljava/lang/String;

.field public static final mSCafeVersion:Ljava/lang/String;

.field public static final upgradeLollipop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "ro.product.device"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v0, "ro.board.platform"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mBoardPlatform:Ljava/lang/String;

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mBoardPlatform:Ljava/lang/String;

    const-string/jumbo v1, "msm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->QCOM_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "zero"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "marinelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "404SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-05G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gt58"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gt5note8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT58_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a8elteskt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8SKT_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "noble"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "hero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-KSU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV33"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a3x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a5x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a7x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a9x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "grace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GRACE_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gts2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gts210ve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gts28ve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GTS2_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a9xpro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A9XPRO_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a8x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8X_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "dream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N171"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-02J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N206"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-03J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "NVX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV36"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "MUW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV35"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move v0, v2

    goto :goto_a

    :cond_a
    :goto_9
    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DREAM_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "great"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N473"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-01K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "OWY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV37"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move v0, v2

    goto :goto_c

    :cond_c
    :goto_b
    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GREAT_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "star"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N327"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-02K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N943"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-03K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "PXZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV38"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "QYA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV39"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move v0, v2

    goto :goto_e

    :cond_e
    :goto_d
    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->STAR_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "crown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SGH-N058"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SC-01L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "RZB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "SCV40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_f

    :cond_f
    move v0, v2

    goto :goto_10

    :cond_10
    :goto_f
    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CROWN_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gts4l"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->TABS4_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gta2xl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->TABA2XL_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "beyond"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->BEYOND_PROJECT:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "a90q"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A90Q_PROJECT:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GT58_PROJECT:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8SKT_PROJECT:Z

    if-eqz v0, :cond_11

    goto :goto_11

    :cond_11
    move v0, v2

    goto :goto_12

    :cond_12
    :goto_11
    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    sget v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_13

    :cond_13
    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    sget v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_14

    move v0, v1

    goto :goto_14

    :cond_14
    move v0, v2

    :goto_14
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    sget v0, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_15

    move v0, v1

    goto :goto_15

    :cond_15
    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MARKER_TRACKER:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_EBOOK_AUTO_BRIGHTNESS_TABLE:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-eqz v0, :cond_16

    goto :goto_16

    :cond_16
    move v0, v2

    goto :goto_17

    :cond_17
    :goto_16
    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_1:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_2:Z

    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    const-string/jumbo v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    const-string v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v3, "gprimelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    if-eqz v0, :cond_1a

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1a
    move v0, v2

    :goto_18
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GTS2_PROJECT:Z

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_19

    :cond_1b
    move v0, v2

    :goto_19
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    if-eqz v0, :cond_1c

    goto :goto_1a

    :cond_1c
    move v0, v2

    goto :goto_1b

    :cond_1d
    :goto_1a
    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FORCE_ADJUST_MANUAL_BRIGHTNESS_IN_LOW_LUX:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-eqz v0, :cond_1e

    goto :goto_1c

    :cond_1e
    move v0, v2

    goto :goto_1d

    :cond_1f
    :goto_1c
    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

    const-string v0, "Unknown"

    const-string/jumbo v3, "ro.boot.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    const-string v0, "0x4f4c"

    const-string/jumbo v3, "ro.boot.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-nez v0, :cond_20

    move v0, v1

    goto :goto_1e

    :cond_20
    move v0, v2

    :goto_1e
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_1f

    :cond_21
    move v0, v2

    :goto_1f
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    if-nez v0, :cond_22

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    if-nez v0, :cond_22

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v0, :cond_22

    move v0, v1

    goto :goto_20

    :cond_22
    move v0, v2

    :goto_20
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A9XPRO_PROJECT:Z

    if-nez v0, :cond_24

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->A8X_PROJECT:Z

    if-eqz v0, :cond_23

    goto :goto_21

    :cond_23
    move v0, v2

    goto :goto_22

    :cond_24
    :goto_21
    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->HERO_PROJECT:Z

    if-eqz v0, :cond_25

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->QCOM_PROJECT:Z

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_23

    :cond_25
    move v0, v2

    :goto_23
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->ENABLE_SENSOR_WITH_DELAY:Z

    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeVersion:Ljava/lang/String;

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->mSCafeVersion:Ljava/lang/String;

    const-string v3, "2016B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_26

    move v0, v1

    goto :goto_24

    :cond_26
    move v0, v2

    :goto_24
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SAVER_V2:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_28

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->BEYOND_PROJECT:Z

    if-eqz v0, :cond_27

    goto :goto_25

    :cond_27
    move v0, v2

    goto :goto_26

    :cond_28
    :goto_25
    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_DOZE_SERVICE_VERSION"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_29

    move v0, v1

    goto :goto_27

    :cond_29
    move v0, v2

    :goto_27
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_DOZE_SERVICE_VERSION"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_2a

    move v0, v1

    goto :goto_28

    :cond_2a
    move v0, v2

    :goto_28
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "INFINITY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CHARGING_VI"

    const-string v4, "BOTH"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    if-eqz v0, :cond_2b

    const-string v0, "BOTH"

    sget-object v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_29

    :cond_2b
    move v0, v2

    :goto_29
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2a

    :cond_2c
    move v0, v2

    :goto_2a
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v0, :cond_2e

    :cond_2d
    move v0, v1

    goto :goto_2b

    :cond_2e
    move v0, v2

    :goto_2b
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_COLOR_FADE_WHEN_WAKINGUP_FROM_DOZE:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GRACE_PROJECT:Z

    if-eqz v0, :cond_2f

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->KOR:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "ro.revision"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x11

    if-ge v0, v3, :cond_2f

    move v0, v1

    goto :goto_2c

    :cond_2f
    move v0, v2

    :goto_2c
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_NOT_SUPPORTED_HW_REV:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->DREAM_PROJECT:Z

    if-nez v0, :cond_31

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->GREAT_PROJECT:Z

    if-eqz v0, :cond_30

    goto :goto_2d

    :cond_30
    move v0, v2

    goto :goto_2e

    :cond_31
    :goto_2d
    move v0, v1

    :goto_2e
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SW_ASOC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->STAR_PROJECT:Z

    if-nez v0, :cond_33

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CROWN_PROJECT:Z

    if-eqz v0, :cond_32

    goto :goto_2f

    :cond_32
    move v0, v2

    goto :goto_30

    :cond_33
    :goto_2f
    move v0, v1

    :goto_30
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AFC:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->STAR_PROJECT:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->CROWN_PROJECT:Z

    if-eqz v0, :cond_34

    goto :goto_31

    :cond_34
    move v0, v2

    goto :goto_32

    :cond_35
    :goto_31
    move v0, v1

    :goto_32
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->TABS4_PROJECT:Z

    if-nez v0, :cond_37

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->TABA2XL_PROJECT:Z

    if-eqz v0, :cond_36

    goto :goto_33

    :cond_36
    move v1, v2

    nop

    :cond_37
    :goto_33
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-string v0, "ADAPTIVE_BRIGHTNESS"

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUSTAINABLE_HBM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callerInfoToString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v1, "PowerManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PowerManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteInt to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_2
    move-exception v1

    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PowerManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_2
    move-exception v1

    return-void
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isAdaptiveBrightnessFeatureSupported()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/power/PowerManagerUtil;->YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    return-void
.end method

.method public static printArray([FLjava/lang/String;)V
    .locals 4

    const-string v0, "PowerManagerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " array l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const-string v1, "PowerManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printArray([ILjava/lang/String;)V
    .locals 4

    const-string v0, "PowerManagerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " array l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const-string v1, "PowerManagerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
