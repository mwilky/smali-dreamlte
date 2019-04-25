.class abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UsbHandler"
.end annotation


# instance fields
.field protected mAdbEnabled:Z

.field private mAdbNotificationShown:Z

.field private mAudioAccessoryConnected:Z

.field private mAudioAccessorySupported:Z

.field private mAudioSourceEnabled:Z

.field protected mBootCompleted:Z

.field private mBroadcastedIntent:Landroid/content/Intent;

.field private mConfigured:Z

.field private mConnected:Z

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field protected mCurrentFunctions:J

.field protected mCurrentFunctionsApplied:Z

.field protected mCurrentUsbFunctionsReceived:Z

.field protected mCurrentUser:I

.field private final mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mEnableRBM:Z

.field private mHideUsbNotification:Z

.field private mHostConnected:Z

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingBootBroadcast:Z

.field private mRBM:Z

.field private mScreenLocked:Z

.field protected mScreenUnlockedFunctions:J

.field protected mSettings:Landroid/content/SharedPreferences;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mSinkPower:Z

.field private mSourcePower:Z

.field private mSupportsAllCombinations:Z

.field private mSystemReady:Z

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbCharging:Z

.field protected final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mUsbNotificationId:I

.field protected mUseUsbNotification:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mRBM:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mEnableRBM:Z

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iput-object p6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-string/jumbo v2, "persist.sys.usb.config"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adb"

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    const-string/jumbo v2, "persist.sys.usb.q_config"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "persist.sys.usb.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adb"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB TEST MODE Enabled : q_func = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "adb"

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Couldn\'t load shared preferences"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "usb-screen-unlocked-config-%d"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    :goto_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    nop

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    return-void
.end method

.method private dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_2

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    and-long v3, p5, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    if-eqz v3, :cond_0

    shl-long v9, v1, v0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_0
    shl-long/2addr v1, v0

    invoke-static {v1, v2}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    return-void
.end method

.method private isTv()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsbStateChanged(Landroid/content/Intent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v5, v6, :cond_3

    return v2

    :cond_3
    goto :goto_1

    :cond_4
    return v3
.end method

.method private notifyAccessoryModeExit()V
    .locals 3

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultUsbValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    :cond_1
    return-void
.end method

.method private setAdbEnabled(Z)V
    .locals 5

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " (mAdbEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.usb.config"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdbEnabled: defvalue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentFunctions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    if-eq p1, v1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    if-eqz p1, :cond_0

    const-string/jumbo v1, "persist.sys.usb.config"

    const-string v2, "adb"

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "persist.sys.usb.config"

    const-string v2, "adb"

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->access$1000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setScreenUnlockedFunctions()V
    .locals 4

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenUnlockedFunctions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    return-void
.end method

.method private updateCurrentAccessory()V
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->getAccessoryStrings()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v2, v1}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entering USB accessory mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nativeGetAccessoryStrings failed"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Debouncing accessory mode exit"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateMidiFunction()V
    .locals 7

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "could not open MIDI file"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    goto :goto_3

    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_1
    throw v1

    :cond_2
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v4, :cond_4

    move v1, v2

    nop

    :cond_4
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    return-void
.end method

.method private updateUsbFunctions()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 12

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v3, "current_functions"

    iget-wide v6, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide v4, 0x20e00000001L

    move-object v1, v8

    move-object v2, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    const-string v0, "current_functions_applied"

    iget-boolean v1, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v3, "screen_unlocked_functions"

    iget-wide v6, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide v4, 0x20e00000003L

    move-object v1, v8

    move-object v2, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    const-string/jumbo v0, "screen_locked"

    iget-boolean v1, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-wide v2, 0x10800000004L

    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v0, "connected"

    iget-boolean v1, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v0, "configured"

    iget-boolean v1, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-object v0, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    const-string v0, "current_accessory"

    const-wide v1, 0x10b00000007L

    iget-object v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    :cond_0
    const-string v0, "host_connected"

    const-wide v1, 0x10800000008L

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "source_power"

    const-wide v1, 0x10800000009L

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "sink_power"

    const-wide v1, 0x1080000000aL

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "usb_charging"

    const-wide v1, 0x1080000000bL

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v0, "hide_usb_notification"

    const-wide v1, 0x1080000000cL

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v0, "audio_accessory_connected"

    const-wide v1, 0x1080000000dL

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v0, "adb_enabled"

    const-wide v1, 0x1080000000eL

    iget-boolean v3, v8, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "kernel_state"

    const-wide v3, 0x1090000000fL

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v0, v3, v4, v5}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not read kernel state"

    invoke-static {v3, v4, v0}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    const-string v0, "kernel_function_list"

    const-wide v3, 0x10900000010L

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/functions"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read kernel function list"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method protected finishBoot()V
    .locals 6

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishBoot"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishBoot mCurrentFunctions to str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultUsbValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "adb_enabled"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->putGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ADB_ENABLED is restricted."

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    :cond_4
    return-void
.end method

.method getAppliedFunctions(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getChargingFunctions()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    or-long/2addr v0, p1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method protected getChargingFunctions()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getEnabledFunctions()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    return-wide v0
.end method

.method protected getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "UsbDeviceManagerPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public getScreenUnlockedFunctions()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    return-wide v0
.end method

.method protected getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_22

    const-wide/16 v4, 0x2

    const/4 v1, 0x4

    const-wide/16 v6, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_13

    :pswitch_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_USB_NOTI_BLOCK "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    goto/16 :goto_13

    :pswitch_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_USB_NOTI_UPDATE"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_3

    move v2, v3

    nop

    :cond_3
    move v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_13

    :pswitch_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_UPDATE_SCREEN_LOCK : mScreenLocked : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v0, v1, :cond_5

    goto/16 :goto_13

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez v0, :cond_7

    goto/16 :goto_13

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_13

    :cond_8
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2b

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_13

    :pswitch_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_SET_SCREEN_UNLOCKED_FUNCTIONS"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "usb-screen-unlocked-config-%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_2b

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_13

    :pswitch_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_LOCALE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_13

    :pswitch_5
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_UPDATE_HOST_STATE"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HOST_STATE connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_5
    if-ltz v6, :cond_d

    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_6
    if-ltz v8, :cond_c

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1100()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHideUsbNotification is not used but value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    goto :goto_6

    :cond_c
    :goto_7
    goto :goto_5

    :cond_d
    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_13

    :pswitch_6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_UPDATE_CHARGING_STATE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_f

    goto :goto_8

    :cond_f
    move v3, v2

    :goto_8
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_13

    :pswitch_7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_ACCESSORY_MODE_ENTER_TIMEOUT"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessory mode enter timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_2b

    :cond_10
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto/16 :goto_13

    :pswitch_8
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v4, "handleMessage -> MSG_UPDATE_PORT_STATE"

    invoke-static {v0, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/usb/UsbPort;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v7

    if-ne v7, v3, :cond_11

    move v7, v3

    goto :goto_9

    :cond_11
    move v7, v2

    :goto_9
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    if-ne v7, v3, :cond_12

    move v7, v3

    goto :goto_a

    :cond_12
    move v7, v2

    :goto_a
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    move v7, v3

    goto :goto_b

    :cond_13
    move v7, v2

    :goto_b
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    nop

    invoke-virtual {v6}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v7

    if-ne v7, v1, :cond_14

    move v7, v3

    goto :goto_c

    :cond_14
    move v7, v2

    :goto_c
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v5, v1}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    invoke-virtual {v6, v3, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v6, v8, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v6, v3, v8}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v6, v8, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_d

    :cond_15
    move v1, v2

    :goto_d
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSupportsAllCombinations : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mAudioAccessorySupported : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mAudioAccessoryConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez v1, :cond_16

    if-eqz v4, :cond_2b

    :cond_16
    iget-wide v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v7, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    goto/16 :goto_13

    :cond_17
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    goto/16 :goto_13

    :pswitch_9
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_UPDATE_USER_RESTRICTIONS"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0, v6, v7, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_13

    :pswitch_a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_USER_SWITCHED"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_2b

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current user switched to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    iput-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "usb-screen-unlocked-config-%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    :cond_18
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_13

    :pswitch_b
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    goto/16 :goto_13

    :pswitch_c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage -> MSG_SYSTEM_READY"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v6, 0x104008d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_19
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    goto/16 :goto_13

    :pswitch_d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_SET_CURRENT_FUNCTION"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_13

    :pswitch_e
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_ENABLE_ADB = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1a

    move v2, v3

    nop

    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto/16 :goto_13

    :pswitch_f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage -> MSG_UPDATE_STATE connected = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",configured = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentFunctions "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-static {v8, v9}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1b

    move v0, v3

    goto :goto_e

    :cond_1b
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_1c

    move v0, v3

    goto :goto_f

    :cond_1c
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    :cond_1d
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_20

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_10

    :cond_1f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    :cond_20
    :goto_10
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto/16 :goto_13

    :cond_21
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    goto/16 :goto_13

    :cond_22
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_SHOW_UPSM_BLOCK_TOAST = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x103012b

    if-ne v0, v3, :cond_27

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Maximum Power Saving Mode Toast mHostConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mPowerConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "reserve_battery_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v3

    goto :goto_11

    :cond_23
    move v0, v2

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mRBM:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_reserve_max_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v3

    goto :goto_12

    :cond_24
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mEnableRBM:Z

    iget v0, p1, Landroid/os/Message;->arg1:I

    const v4, 0x1040a9c

    if-ne v0, v3, :cond_25

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_25
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_2b

    :cond_26
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_27
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emergency_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2a

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Emergency Mode Toast"

    invoke-static {v0, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    const v4, 0x1040a9a

    if-ne v0, v3, :cond_28

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_28
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_2b

    :cond_29
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :cond_2a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Don\'t show Toast"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_13
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isUsbDataTransferActive(J)Z
    .locals 4

    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

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

.method protected isUsbTransferAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected putGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(IZJ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected abstract setEnabledFunctions(JZ)V
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateAdbNotification(Z)V
    .locals 0

    return-void
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .locals 4

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHostState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    nop

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    :cond_2
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->arg1:I

    iput v1, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_3

    const-wide/16 v3, 0x3e8

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    :goto_2
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateUsbNotification(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsbNotification("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") : mConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mConfigured = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentFunctions = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mHostConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mSourcePower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mSinkPower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUsbCharging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUseUsbNotification = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v2, :cond_1a

    const-string v2, "0"

    const-string/jumbo v3, "persist.charging.notify"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v2, :cond_2

    iget v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    iget v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v5, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Clear notification"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040ab7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1200()Lcom/android/server/utils/sysfwutil/DexObserver;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1200()Lcom/android/server/utils/sysfwutil/DexObserver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/sysfwutil/DexObserver;->isDexModeOn()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1200()Lcom/android/server/utils/sysfwutil/DexObserver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/sysfwutil/DexObserver;->isSemiDexModeOn()Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v8, :cond_4

    const v5, 0x1040ad1

    const/16 v2, 0x29

    goto/16 :goto_1

    :cond_4
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v8, :cond_e

    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x4

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    const v5, 0x1040ab5

    const/16 v2, 0x1b

    goto :goto_0

    :cond_5
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x10

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    const v5, 0x1040aba

    const/16 v2, 0x1c

    goto :goto_0

    :cond_6
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x8

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    const v5, 0x1040aac

    const/16 v2, 0x1d

    goto :goto_0

    :cond_7
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x20

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    const v5, 0x1040ac9

    const/16 v2, 0x2f

    goto :goto_0

    :cond_8
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    const v5, 0x1040a99

    const/16 v2, 0x1e

    goto :goto_0

    :cond_9
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/32 v10, 0x200004

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    const v5, 0x1040ab2

    const/16 v2, 0x32

    goto :goto_0

    :cond_a
    iget-wide v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/32 v10, 0x80000

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    const v5, 0x1040aa1

    const/16 v2, 0x64

    :cond_b
    :goto_0
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_d

    if-eqz v5, :cond_c

    const v8, 0x1040ab9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    :cond_c
    const v5, 0x1040ac8

    const/16 v2, 0x1f

    goto :goto_1

    :cond_d
    if-nez v5, :cond_10

    const v5, 0x1040ab8

    const/16 v2, 0x20

    goto :goto_1

    :cond_e
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_f

    const v5, 0x1040ac8

    const/16 v2, 0x1f

    goto :goto_1

    :cond_f
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v8, :cond_10

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v8, :cond_10

    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eqz v8, :cond_10

    const v5, 0x1040ab8

    const/16 v2, 0x20

    :cond_10
    :goto_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mUsbNotificationId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", titleRes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v2, v8, :cond_11

    if-eqz v1, :cond_19

    :cond_11
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v8, :cond_12

    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    iget v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUsbNotification : cancel id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_12
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ON_ALL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUsbNotification : id set 0 due to blocking mode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_13
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ON_HOST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x1f

    if-eqz v8, :cond_14

    if-ne v2, v9, :cond_14

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateUsbNotification : id set 0 due to blocking mode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_14
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ON_DEVICE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    if-eq v2, v9, :cond_15

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUsbNotification : id set 0 due to blocking mode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_15
    if-eqz v2, :cond_19

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x1040ad1

    if-eq v5, v9, :cond_16

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    iget-object v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v15, v10

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    nop

    move-object v12, v10

    goto :goto_3

    :cond_16
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.HelpTrampoline"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "android.intent.extra.TEXT"

    const-string v12, "help_url_audio_accessory_not_supported"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {v11, v4, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    goto :goto_2

    :cond_17
    move-object v11, v3

    :goto_2
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const v13, 0x1040ad0

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v13, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v13, 0x10809cc

    invoke-virtual {v10, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v13, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v14, 0x1060204

    invoke-virtual {v10, v14}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    if-ne v5, v9, :cond_18

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_18
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v2, v9, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateUsbNotification : notify id = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", title = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void

    :cond_1a
    :goto_4
    return-void
.end method

.method protected updateUsbStateBroadcastIfNeeded(JZ)V
    .locals 7

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUsbStateBroadcastIfNeeded functions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x31000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "connected"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "host_connected"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "configured"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "unlocked"

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "config_changed"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-wide v1, p1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUsbStateBroadcastIfNeeded remainingFunctions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v1, v2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v4

    sub-long/2addr v1, v4

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending intent : ACTION_USB_STATE : connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", configured = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mCurrentFunctions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mHostConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", configChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
