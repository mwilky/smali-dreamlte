.class public Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;
.super Ljava/lang/Object;
.source "GsimcLogger.java"


# static fields
.field private static final DEX_GSIM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.dexcontrol"

.field private static final DMA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final DMA_SUPPORT_VERSION:I = 0x202fbf00

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final GSIM_LOG_DEVICE_ERROR:Ljava/lang/String; = "2ERR"

.field public static final GSIM_STATUS_LOG_DEX_PAD_FAN_SETTING_CHANGE:Ljava/lang/String; = "2FAN"

.field public static final GSIM_STATUS_LOG_DEX_PAD_USB_DEVICE:Ljava/lang/String; = "2USB"

.field public static final GSIM_STATUS_LOG_DEX_STATION_FAN_SETTING_CHANGE:Ljava/lang/String; = "1FAN"

.field public static final GSIM_STATUS_LOG_DEX_STATION_USB_DEVICE:Ljava/lang/String; = "1USB"

.field public static final GSIM_STATUS_LOG_ETHERNET:Ljava/lang/String; = "1ETH"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_1:Ljava/lang/String; = "1"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_2:Ljava/lang/String; = "2"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_3:Ljava/lang/String; = "3"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_4:Ljava/lang/String; = "4"

.field public static final GSIM_STATUS_LOG_TA_TYPE:Ljava/lang/String; = "2TAT"

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final REPORT_APP_STATUS_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TRACKING_ID:Ljava/lang/String; = "4F9-399-4810210"

.field private static final USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static sIsDmaSupported:Z

.field private static sIsDmaVersionChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaSupported:Z

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaVersionChecked:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->SURVEY_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.providers.context"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    const-string v3, "Could not find ContextProvider"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->SURVEY_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaVersionChecked:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->isDmaSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaSupported:Z

    :cond_1
    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaSupported:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sendDmaLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sendGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->SURVEY_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaVersionChecked:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->isDmaSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaSupported:Z

    :cond_1
    sget-boolean v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaSupported:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sendDmaLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sendGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    return-void
.end method

.method private static isDmaSupported(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->sIsDmaVersionChecked:Z

    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x202fbf00

    if-lt v3, v4, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method static sendDmaLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    const-string v2, "4F9-399-4810210"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDmaLog intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.samsung.android.app.dexcontrol"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-ltz v1, :cond_3

    const-string/jumbo v1, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    if-eqz p5, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logger intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    const-string v2, "Error while using insertLog"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
