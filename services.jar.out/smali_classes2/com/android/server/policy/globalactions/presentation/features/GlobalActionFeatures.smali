.class public Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "GlobalActionFeatures.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    return-void
.end method

.method private isBikeModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bikemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalaction"

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

.method private isDataModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDemoModeSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDesktopModeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isEffectSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isForceRestartMessageSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNaviBarSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SF_EFFECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEffectSupported()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "NAV_BAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isNaviBarSupported()Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "DESKTOP_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDesktopModeSupported()Z

    move-result v0

    return v0

    :cond_2
    const-string v0, "BIKE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isBikeModeSupported()Z

    move-result v0

    return v0

    :cond_3
    const-string v0, "DATA_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDataModeSupported()Z

    move-result v0

    return v0

    :cond_4
    const-string v0, "DEMO_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isDemoModeSupported()Z

    move-result v0

    return v0

    :cond_5
    const-string v0, "LOCKDOWN_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const-string v0, "FORCE_RESTART_MESSAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isForceRestartMessageSupported()Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
