.class Lcom/android/server/desktopmode/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;,
        Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYS_TO_MIGRATE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string/jumbo v1, "hdmi"

    const-string/jumbo v2, "hdmi_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string/jumbo v1, "keyboard"

    const-string/jumbo v2, "keyboard_dex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string/jumbo v1, "keyboard_b"

    const-string/jumbo v2, "keyboard_backup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string/jumbo v1, "timeout"

    const-string/jumbo v2, "timeout_dex"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string/jumbo v1, "timeout_b"

    const-string/jumbo v2, "timeout_backup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    const-string v1, "developer"

    const-string/jumbo v2, "launch_policy_developer_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    const-string/jumbo v1, "flow_pointer_is_on_dex"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    const-string/jumbo v1, "flow_pointer_from_where_dex"

    const-string/jumbo v2, "right"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    const-string/jumbo v1, "spen_mode"

    const-string/jumbo v2, "pen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/desktopmode/SettingsHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;-><init>(Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/SettingsHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private getPsmValue(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string v4, "NumberFormatException in getPsmValue"

    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private isLowPowerMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private setNormalModeScreenOffTimeout(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setNormalModeVirtualKeyboard(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setPsmSpeedLimit(ZI)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/desktopmode/SettingsHelper;->isLowPowerMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string/jumbo v2, "restricted_device_performance"

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/SettingsHelper;->getPsmValue(Ljava/lang/String;)I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPsmSpeedLimit(), current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "speed_limit_backup"

    invoke-static {v1, v3, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    const-string/jumbo v1, "restricted_device_performance"

    invoke-direct {p0, v1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmValue(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPsmSpeedLimit(), Disabling speed limit"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "speed_limit_backup"

    invoke-static {v2, v3, v0, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPsmSpeedLimit(), Restoring backed up value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v1, "restricted_device_performance"

    invoke-direct {p0, v1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmValue(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "speed_limit_backup"

    invoke-static {v1, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setPsmValue(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string v5, "NumberFormatException in setPsmValue"

    invoke-static {v4, v5, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPsmValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setScreenOffTimeout(ZI)V
    .locals 5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenOffTimeout(), Backing up current value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "timeout_backup"

    invoke-static {v1, v2, v0, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "timeout_dex"

    const v3, 0x927c0

    invoke-static {v1, v2, v3, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScreenOffTimeout(), Setting Desktop mode value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeScreenOffTimeout(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "timeout_backup"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenOffTimeout(), Restoring backed up value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeScreenOffTimeout(II)V

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "timeout_backup"

    invoke-static {v1, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setScreensaver(ZI)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v2, v3, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenSaver(), current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screensaver_backup"

    invoke-static {v0, v3, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    invoke-direct {p0, v1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setScreensaverValue(II)V

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setScreenSaver(), Disabling screen saver"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screensaver_backup"

    invoke-static {v2, v3, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreensaver(), Restoring backed up value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setScreensaverValue(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screensaver_backup"

    invoke-static {v0, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setScreensaverValue(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setToDefaultIfNoSettings()V
    .locals 5

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->DEFAULT_VALUES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setVirtualKeyboard(ZI)V
    .locals 5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVirtualKeyboard(), Backing up current value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "keyboard_backup"

    invoke-static {v1, v2, v0, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "keyboard_dex"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVirtualKeyboard(), Setting Desktop mode value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeVirtualKeyboard(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "keyboard_backup"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVirtualKeyboard(), Restoring backed up value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeVirtualKeyboard(II)V

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "keyboard_backup"

    invoke-static {v1, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private startMigration()V
    .locals 6

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->KEYS_TO_MIGRATE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.service.dex."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method backupOrRestoreSettings(ZII)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupOrRestoreSettings(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "backed up!"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "restored!"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupOrRestoreSettings(), enter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", displayType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    move v0, v2

    if-nez v0, :cond_5

    const/16 v1, 0x65

    if-ne p2, v1, :cond_6

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setVirtualKeyboard(ZI)V

    :cond_6
    if-nez v0, :cond_7

    const/16 v1, 0x66

    if-ne p2, v1, :cond_8

    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setScreensaver(ZI)V

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/android/server/desktopmode/SettingsHelper;->setPsmSpeedLimit(ZI)V

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "enabled"

    invoke-static {v1, v2, p1, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    return-void
.end method

.method clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/State;I)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearSettingsByLauncherDataCleared()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->clearSettingsAsUser(Landroid/content/ContentResolver;I)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set Dex default on virtual keyboard in standalone"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/android/server/desktopmode/SettingsHelper;->setNormalModeVirtualKeyboard(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_7

    nop

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set the setting for touchkeyboard, isDexStationCoverAttached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "touch_keyboard"

    if-nez v1, :cond_5

    move v6, v2

    goto :goto_1

    :cond_5
    move v6, v3

    :goto_1
    invoke-static {v4, v5, v6, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "touch_keyboard_backup"

    invoke-static {v4, v5, v2, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/desktopmode/SettingsHelper;->setToDefaultIfNoSettings()V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "display_chooser_do_not_show_again"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method getHdmiSettings()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "hdmi_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setCurrentUserId(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->applyGlobalSettings(Landroid/content/ContentResolver;I)V

    :cond_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setCurrentUserId(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/SettingsHelper;->startMigration()V

    :cond_1
    return-void
.end method

.method setHdmiSettings(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "hdmi_mode"

    nop

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method updateMonitorInfo()V
    .locals 5

    const-string v0, "/sys/class/dp_sec/monitor_info"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "monitor_info"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_changed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_info"

    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "monitor_changed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
