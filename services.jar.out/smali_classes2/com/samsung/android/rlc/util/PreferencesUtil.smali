.class public Lcom/samsung/android/rlc/util/PreferencesUtil;
.super Ljava/lang/Object;
.source "PreferencesUtil.java"


# static fields
.field public static final BACKOFF_MAX_VALUE:I = 0x44aa200

.field public static final BOOT_TIME:Ljava/lang/String; = "boot_time"

.field public static final CALL_CHECK_API:Ljava/lang/String; = "callcheckapi"

.field public static final CHECK_BACKOFF:Ljava/lang/String; = "check_backoff"

.field private static final CLEAR_RLC_KEY:Ljava/lang/String; = "clear_rlc"

.field public static final DEFAULT_BACKOFF:Ljava/lang/String; = "180000"

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE_BOOLEAN:Z = false

.field public static final DELIVERY_BACKOFF:Ljava/lang/String; = "delivery_backoff"

.field private static final DELIVERY_URLKEY:Ljava/lang/String; = "delivery_urlkey"

.field private static final DM_URLKEY:Ljava/lang/String; = "dm_urlkey"

.field public static final DOWNLOAD_ICON:Ljava/lang/String; = "image_url"

.field private static final EMPTY:I = -0x1

.field private static final FALSE:I = 0x0

.field public static final FIRST_CHECK:Ljava/lang/String; = "1st_check"

.field public static final GCM_BACKOFF:Ljava/lang/String; = "gcm_backoff"

.field public static final GCM_MG_REGISTRATION_BACKOFF:Ljava/lang/String; = "gcm_mg_registration_backoff"

.field private static final MG_STATE_REGISTRATION:Ljava/lang/String; = "MGRegistered"

.field private static final PCW_CLIENT_VERSION:Ljava/lang/String; = "rlc_client_version"

.field private static final PREFERENCE:Ljava/lang/String; = "com.samsung.android.rlc"

.field private static final REGISTRATION:Ljava/lang/String; = "registration"

.field public static final RESULT_REPORT_BACKOFF:Ljava/lang/String; = "report_backoff"

.field public static final RESULT_THEFT_BACKOFF:Ljava/lang/String; = "theft_backoff"

.field public static final RMM_CERT:Ljava/lang/String; = "cert"

.field public static final RMM_FINAL_CHECK:Ljava/lang/String; = "finalchecked"

.field public static final RMM_REG_IMEI:Ljava/lang/String; = "registeredimei"

.field public static final RMM_THEFT_PROTECTION_ENABLE:Ljava/lang/String; = "theftptc"

.field public static final SPP_BACKOFF:Ljava/lang/String; = "spp_backoff"

.field public static final SPP_MG_REGISTRATION_BACKOFF:Ljava/lang/String; = "spp_mg_registration_backoff"

.field public static final TAG:Ljava/lang/String;

.field private static final TRUE:I = 0x1

.field public static final UNLOCK_BACKOFF:Ljava/lang/String; = "unlock_backoff"

.field public static final UNLOCK_REPORT:Ljava/lang/String; = "unlock_report"

.field public static final VALID_ID:Ljava/lang/String; = "valid_Id"

.field private static handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCheckBackoff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "check_backoff"

    const-string v2, "180000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearDeliveryBackoff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "delivery_backoff"

    const-string v2, "180000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearGCMBackoff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "gcm_backoff"

    const-string v2, "180000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearGCMMgRegistrationBackoff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "gcm_mg_registration_backoff"

    const-string v2, "180000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearRegistraionID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearSPPBackoff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "spp_backoff"

    const-string v2, "180000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearSPPMgRegistrationBackoff(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string/jumbo v1, "spp_mg_registration_backoff"

    const-string v2, "180000"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static getMessageGatewayURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "180000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v1, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->isRegistered(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v0

    return v3

    :cond_0
    :try_start_1
    const-string v2, "Y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "clear_rlc"

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRegistraionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRlcClear  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-string v1, "clear_rlc"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->handler:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insertValue(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/rlc/util/PreferencesUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/samsung/android/rlc/util/PreferencesUtil;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    invoke-static {p0, v1, p1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->saveMGRegistrationStatus(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
