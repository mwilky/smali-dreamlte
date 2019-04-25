.class Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemConfig"
.end annotation


# static fields
.field static final FEATURE_ALWAYS_ON_DISPLAY:Z

.field static final FEATURE_DEX_MODE:Z = true

.field static final FEATURE_GESTURE_MODE:Z

.field static final FEATURE_LOGGING:Z

.field static final FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field static final FEATURE_SENSOR_IS_OPTICAL:Z

.field static final TIMEOUT_BIOMETRIC_PROMPT:I = 0xea60


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "google_touch_rear,navi=1"

    const-string/jumbo v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const-string/jumbo v0, "google_touch_rear,navi=1"

    const-string/jumbo v1, "optical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_DOZE_SERVICE_VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    sput-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_ALWAYS_ON_DISPLAY:Z

    const-string/jumbo v0, "google_touch_rear,navi=1"

    const-string/jumbo v1, "navi=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_GESTURE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_LOGGING:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSupportDMALogging(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x202fbf00

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "isSupportDMALogging: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
