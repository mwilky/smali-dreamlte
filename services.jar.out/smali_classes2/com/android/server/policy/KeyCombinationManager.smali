.class public Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;
    }
.end annotation


# static fields
.field private static final DEBUG_INPUT:Z

.field private static final INTERACTION_CONTROL_INTENT:Ljava/lang/String; = "com.samsung.accessibility.TOGGLE_MODE"

.field private static final SAFE_DEBUG:Z

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SCREEN_CAPTURE_ORIGINAL:I = 0x1

.field private static final SYSDUMP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "KeyCombinationManager"

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z


# instance fields
.field private final KEY_APP_SWITCH:I

.field private final KEY_BACK:I

.field private final KEY_ENTER:I

.field private final KEY_HOME:I

.field private final KEY_MENU:I

.field private final KEY_POWER:I

.field private final KEY_RESET:I

.field private final KEY_SYSTEM_SIZE:I

.field private final KEY_VOLUME_DOWN:I

.field private final KEY_VOLUME_UP:I

.field private final KEY_WIFI_PROTECTED_SETUP:I

.field private final mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

.field private mConsumed:[Z

.field mContext:Landroid/content/Context;

.field private final mFactoryTestChordLongPressRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private final mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

.field private final mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

.field private mIsDirectAccessShortPressed:Z

.field mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field private final mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

.field private final mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

.field private final mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

.field mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private final mScreenshotChordLongPressRunnable:Ljava/lang/Runnable;

.field private final mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

.field private final mSysDumpLongPressRunnable:Ljava/lang/Runnable;

.field private mTime:[J

.field private mTriggered:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->DEBUG_INPUT:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->SAFE_DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnableChecked:Z

    sput-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_SYSTEM_SIZE:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_VOLUME_DOWN:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_VOLUME_UP:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_HOME:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_POWER:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_MENU:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_WIFI_PROTECTED_SETUP:I

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_ENTER:I

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_BACK:I

    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_APP_SWITCH:I

    const/16 v3, 0x9

    iput v3, p0, Lcom/android/server/policy/KeyCombinationManager;->KEY_RESET:I

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    new-array v3, v0, [J

    iput-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    new-instance v3, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;

    invoke-direct {v3, p0, v2}, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;-><init>(Lcom/android/server/policy/KeyCombinationManager;Z)V

    iput-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;-><init>(Lcom/android/server/policy/KeyCombinationManager;Z)V

    iput-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/KeyCombinationManager$1;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mSysDumpLongPressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/KeyCombinationManager$2;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordLongPressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$vKEbwVxVXT16tHVKI8AV6yD6qIw;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$vKEbwVxVXT16tHVKI8AV6yD6qIw;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mFactoryTestChordLongPressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$tAOCu4BhymmvdCgZcH5MLeoxYqs;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$tAOCu4BhymmvdCgZcH5MLeoxYqs;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$I57FqZDxXhfP45yyPu--PVMFFSM;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$I57FqZDxXhfP45yyPu--PVMFFSM;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$kNWE0WiYVKM50cR3uKHrGeIvF4o;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$kNWE0WiYVKM50cR3uKHrGeIvF4o;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/KeyCombinationManager$4;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/KeyCombinationManager$5;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/KeyCombinationManager;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/KeyCombinationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    return p1
.end method

.method private blockFactoryResetIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v0, v2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelFactoryResetPendingChordAction()V

    :cond_0
    return-void
.end method

.method private cancelPendingChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mFactoryTestChordLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mSysDumpLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkDirectAccessTriggered()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VZW_SETUP_WIZARD:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVzwSetupWizardRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v2, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setAppOpsPermissionIfNeeded(I)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startDirectAccessService()V

    const-string v0, "KeyCombinationManager"

    const-string v2, "direct access mesage : service"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "setupwizard_bixby_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    move v2, v3

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/server/policy/KeyCombinationManager$3;

    invoke-direct {v4, p0, v0}, Lcom/android/server/policy/KeyCombinationManager$3;-><init>(Lcom/android/server/policy/KeyCombinationManager;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const-string v3, "KeyCombinationManager"

    const-string v4, "block to trigger talkbackMode when Bixby Setup Wizard is enable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    :cond_5
    :goto_1
    return-void
.end method

.method private getChordLongPressDelay()J
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessibilityShortcut()V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VZW_SETUP_WIZARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVzwSetupWizardRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v1, "Block to trigger accessiblity via keycode when Verizon Setup Wizard Running"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyCombinationManager"

    const-string v1, "Accessibility Shortcut unAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x2

    aget-boolean v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x3

    aget-boolean v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v3, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x96

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    const-string v0, "KeyCombinationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptAccessibilityShortcut - success and waiting long press : volumeDownKeyTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "volumeUpKeyTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v0, v2

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mAccessibilityShortcutLongPress:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private interceptDirectAccessChord()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v1

    const-wide/16 v7, 0x96

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v2

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromPower:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private interceptFactoryTestChord()V
    .locals 9

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v2

    const-wide/16 v7, 0x96

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v1

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x1

    aput-boolean v5, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v0, v2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mFactoryTestChordLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private interceptInteractionControlChord()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInteractionControlTurnedOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x3

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v6, v0, v1

    const-wide/16 v8, 0x96

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v6, v0, v2

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v0, v2

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mInteractionControlChordLongPressFromHome:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->getChordLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/KeyCombinationManager;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x96

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v9, v0, v1

    add-long/2addr v9, v3

    cmp-long v0, v7, v9

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v9, v0, v6

    add-long/2addr v9, v3

    cmp-long v0, v7, v9

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v0, v6

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v9, v0, v2

    add-long/2addr v9, v3

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v9, v0, v6

    add-long/2addr v9, v3

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v0, v2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v0, v6

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordLongPressRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->getChordLongPressDelay()J

    move-result-wide v9

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v7, v7, v2

    add-long/2addr v7, v3

    cmp-long v7, v0, v7

    if-gtz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v7, v7, v6

    add-long/2addr v7, v3

    cmp-long v3, v0, v7

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v3, v2

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v2, v6

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mScreenshotChordLongPressRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string v0, "KeyCombinationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start screenshot. mScreenOnFully="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private interceptStopLockTaskModePinnedChord()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x7

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v1

    const-wide/16 v7, 0x96

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v0, v2

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x1

    aput-boolean v5, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v5, v0, v2

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->getChordLongPressDelay()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyCombinationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptStopLockTaskModePinnedChord - fail : now="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " homeKeyTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    const/4 v6, 0x2

    aget-wide v5, v5, v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " backKeyTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v5, v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private interceptSysDumpChord()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x6

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x1

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v7, v0, v1

    const-wide/16 v9, 0x96

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v7, v0, v2

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v7, v0, v3

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v4, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v4, v0, v2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v4, v0, v3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mSysDumpLongPressRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->getChordLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnableChecked:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnabled:Z

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnableChecked:Z

    :cond_0
    sget-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->mScreenShotChordEnabled:Z

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/policy/KeyCombinationManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v1, "factoryTestChordLongPressRunnable : startActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.factory"

    const-string v2, "com.sec.factory.app.factorytest.FactoryTestMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyCombinationManager"

    const-string v3, "No activity to launch factorytestmain."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v2, "Reset home triggered"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v2, "Reset volume down triggered"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v0, v1

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v2, "Reset volume up triggered"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " PowerKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "HomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " HomeKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " VolumeDownKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " VolumeUpKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "WiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " WiFiProtectedSetupKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "MenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " MenuKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "EnterKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " EnterKeyConsumed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getKeyCombinationTime(I)J
    .locals 9

    and-int/lit16 v0, p1, 0x400

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/KeyCombinationManager;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x3

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v6

    add-long/2addr v0, v4

    return-wide v0

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v7, 0x5

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isInteractionControlTurnedOn()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v8, 0x2

    aget-boolean v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v6

    add-long/2addr v0, v4

    return-wide v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDirectAccessEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v7

    add-long/2addr v0, v4

    return-wide v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v6

    add-long/2addr v0, v4

    return-wide v0

    :cond_7
    return-wide v1
.end method

.method public getKeyCombinationTimeout(I)J
    .locals 5

    and-int/lit16 v0, p1, 0x400

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/KeyCombinationManager;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x3

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    aget-wide v0, v0, v3

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 10

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    return-void

    :cond_2
    sget-boolean v5, Lcom/android/server/policy/KeyCombinationManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_3

    const-string v5, "KeyCombinationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptKeyCombinationBeforeQueueing keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v5, 0x1388

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const/4 v5, 0x5

    if-eqz v3, :cond_4

    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_1
    const/16 v5, 0x8

    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptStopLockTaskModePinnedChord()V

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x4

    if-eqz v3, :cond_6

    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_3
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x6

    if-eqz v3, :cond_7

    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_4
    if-eqz v3, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v7, v2

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v5, v2

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v2

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    aput-wide v5, v1, v2

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptAccessibilityShortcut()V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeDownKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v2

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_9

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v5, v1

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v5, v1

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    aput-wide v5, v2, v1

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptDirectAccessChord()V

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptAccessibilityShortcut()V

    goto/16 :goto_2

    :cond_9
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetVolumeUpKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v5, v1

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->checkDirectAccessTriggered()V

    goto/16 :goto_2

    :sswitch_6
    const/4 v5, 0x3

    if-eqz v3, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptFactoryTestChord()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptSysDumpChord()V

    :cond_a
    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptDirectAccessChord()V

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->checkDirectAccessTriggered()V

    goto/16 :goto_2

    :sswitch_7
    const/4 v5, 0x7

    if-eqz v3, :cond_c

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptStopLockTaskModePinnedChord()V

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    goto :goto_2

    :sswitch_8
    const/4 v5, 0x2

    if-eqz v3, :cond_e

    if-eqz v0, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v1, v6, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    aput-wide v6, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v2, v1, v5

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->interceptInteractionControlChord()V

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mResetHomeKeyTriggeredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aput-boolean v2, v1, v5

    invoke-direct {p0}, Lcom/android/server/policy/KeyCombinationManager;->cancelPendingChordAction()V

    nop

    :cond_10
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x6 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_6
        0x42 -> :sswitch_3
        0x52 -> :sswitch_2
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_4
        0xbb -> :sswitch_1
        0x412 -> :sswitch_0
    .end sparse-switch
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1

    return v3

    :cond_1
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_2
    return v2

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/16 v5, 0x8

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_3
    return v2

    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x4

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_4
    return v2

    :sswitch_3
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_5
    return v2

    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_b

    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v3

    :cond_6
    return v2

    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_b

    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v2

    :cond_7
    return v2

    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_8

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_8
    return v2

    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x7

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_9

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_9
    return v2

    :sswitch_8
    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    if-nez v1, :cond_a

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mConsumed:[Z

    aput-boolean v3, v4, v5

    :cond_a
    return v2

    :cond_b
    :goto_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x6 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_6
        0x42 -> :sswitch_3
        0x52 -> :sswitch_2
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_4
        0xbb -> :sswitch_1
        0x412 -> :sswitch_0
    .end sparse-switch
.end method

.method public isKeyCombinationTriggered()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x5

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_RESTRICTED_INPUT_IN_LDU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x4

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v4, 0x6

    aget-boolean v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string v0, "KeyCombinationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyCombinationTriggered homeTriggered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " volumeDownTriggered="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " volumeUpTriggered="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " resetTriggered="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/16 v2, 0x9

    aget-boolean v1, v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isKeyCombinationTriggeredWithPower()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    const/4 v4, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "KeyCombinationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCombinationTriggeredWithPower powerTriggered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v6, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " volumeUpTriggered="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " volumeDownTriggered="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " homeTriggered="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v2
.end method
