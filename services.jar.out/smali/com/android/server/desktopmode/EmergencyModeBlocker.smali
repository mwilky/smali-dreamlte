.class Lcom/android/server/desktopmode/EmergencyModeBlocker;
.super Ljava/lang/Object;
.source "EmergencyModeBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;,
        Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;
    }
.end annotation


# static fields
.field private static final DELAY_UPDATE:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockerRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mEnabledInBroadcast:Z

.field private mEnabledInSettings:Z

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/-$$Lambda$EmergencyModeBlocker$mucza0ugPOhwB7TJTYAiL5dFNys;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/-$$Lambda$EmergencyModeBlocker$mucza0ugPOhwB7TJTYAiL5dFNys;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEnabledInSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    new-instance v1, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/EmergencyModeBlocker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEnabledInSettings()Z

    move-result v0

    return v0
.end method

.method private isEnabledInSettings()Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public static synthetic lambda$mucza0ugPOhwB7TJTYAiL5dFNys(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->updateBlockerRegistration()V

    return-void
.end method

.method private scheduleUpdateBlockerRegistration()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method private scheduleUpdateBlockerRegistration(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateBlockerRegistration()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInSettings:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->setEmergencyModeEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->setEmergencyModeEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    return v0
.end method

.method public onBlocked()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
