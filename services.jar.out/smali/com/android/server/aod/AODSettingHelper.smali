.class Lcom/android/server/aod/AODSettingHelper;
.super Ljava/lang/Object;
.source "AODSettingHelper.java"


# static fields
.field private static final AOD_MODE_ON:Ljava/lang/String; = "aod_mode"

.field private static final AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field private static final AOD_TAP_TO_SHOW:Ljava/lang/String; = "aod_tap_to_show_mode"

.field private static final FINGERPRINT_ADAPTIVE_ICON:Ljava/lang/String; = "fingerprint_adaptive_icon"

.field private static final FINGERPRINT_SCREEN_LOCK:Ljava/lang/String; = "fingerprint_screen_lock"


# instance fields
.field private mAODDefaultSetting:I

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    iput-object p1, p0, Lcom/android/server/aod/AODSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_mode"

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODConfig;->isAODDefaultOn()Z

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    iget-object v1, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "aod_mode"

    iget v4, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAODShowState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public isAODEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_mode"

    iget v2, p0, Lcom/android/server/aod/AODSettingHelper;->mAODDefaultSetting:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0
.end method

.method public isAODShowState()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isAODTapToShow()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_tap_to_show_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isFingerAdaptiveIcon()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "fingerprint_adaptive_icon"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isFingerScreenLock()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/aod/AODSettingHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "fingerprint_screen_lock"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method
