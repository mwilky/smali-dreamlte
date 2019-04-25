.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final RELEASE_BUILD:Z

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private bRestrictHostAPI:Z

.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

.field private final mLock:Ljava/lang/Object;

.field private mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

.field private mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbService;->RELEASE_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->bRestrictHostAPI:Z

    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UsbHostNotification"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "UsbHostNotification"

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    new-instance v2, Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {v2}, Lcom/android/server/utils/sysfwutil/DexObserver;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "UsbService"

    const-string v4, "UsbService -> UsbHostManager"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/utils/sysfwutil/DexObserver;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_6

    const-string v3, "UsbService"

    const-string v4, "At UsbService, UsbDeviceManager -> UsbHostRestrictor"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/UsbHostRestrictor;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v3, "UsbService"

    const-string v4, "At UsbService, UsbDeviceManager -> UsbMonitorImpl"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/usb/UsbMonitorImpl;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbMonitorImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_4

    const-string v0, "UsbService"

    const-string v3, "UsbService -> UsbMirrorLinkManager"

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    goto :goto_0

    :cond_4
    const-string v0, "UsbService"

    const-string v3, "UsbService -> ML Feature level is not 3"

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "UsbService"

    const-string v3, "UsbService -> no ML Feature "

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "USB Device Not Supported while trying to start UsbHostRestrictor"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method private isAllowedPackage()Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowedPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android"

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    const-string v3, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/usb/UsbService;->RELEASE_BUILD:Z

    if-eq v3, v4, :cond_1

    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip signature verification, ret"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowedPackage, ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isCallerInCurrentUserProfileGroupLocked()Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    return-void
.end method

.method private onSwitchUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    return-void
.end method

.method public bootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->systemReady()V

    :cond_1
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    return-void
.end method

.method public countKeyBoardConnectedviaUsbHost()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public countMouseConnectedviaUsbHost()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public denyUsbDebugging()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v5, "UsbService"

    invoke-static {v0, v5, v3}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v0, v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v14, v6

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const-string v7, "--proto"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    move/from16 v16, v6

    if-eqz v4, :cond_2a

    :try_start_1
    array-length v6, v4

    if-eqz v6, :cond_2a

    const/4 v6, 0x0

    aget-object v7, v4, v6

    const-string v8, "-a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    if-eqz v16, :cond_2

    move-wide v11, v14

    goto/16 :goto_1b

    :cond_2
    const-string/jumbo v7, "set-port-roles"

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const v11, -0x4f94e1aa

    const v12, -0x356f97e5    # -4731917.5f

    const/4 v13, 0x4

    const/16 v17, -0x1

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_c

    :try_start_2
    array-length v7, v4

    if-ne v7, v13, :cond_c

    aget-object v7, v4, v9

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v12, :cond_5

    const v12, -0x1a426a07

    if-eq v13, v12, :cond_4

    const v12, 0x35de93

    if-eq v13, v12, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v12, "sink"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v9

    goto :goto_1

    :cond_4
    const-string/jumbo v12, "no-power"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v6

    goto :goto_1

    :cond_5
    const-string/jumbo v12, "source"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    move/from16 v10, v17

    :goto_1
    packed-switch v10, :pswitch_data_0

    new-instance v8, Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_0
    const/4 v10, 0x0

    goto :goto_2

    :pswitch_1
    const/4 v10, 0x2

    goto :goto_2

    :pswitch_2
    const/4 v10, 0x1

    nop

    :goto_2
    nop

    aget-object v12, v4, v8

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v11, :cond_9

    const v11, 0x30f5a8

    if-eq v13, v11, :cond_8

    const v9, 0x7b007436

    if-eq v13, v9, :cond_7

    goto :goto_3

    :cond_7
    const-string/jumbo v9, "no-data"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move/from16 v17, v6

    goto :goto_3

    :cond_8
    const-string v6, "host"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v17, 0x0

    goto :goto_3

    :cond_9
    const-string v6, "device"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move/from16 v17, v9

    :cond_a
    :goto_3
    packed-switch v17, :pswitch_data_1

    new-instance v6, Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_3
    const/4 v6, 0x0

    goto :goto_4

    :pswitch_4
    const/4 v6, 0x2

    goto :goto_4

    :pswitch_5
    const/4 v6, 0x1

    nop

    :goto_4
    nop

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_b

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v8, v7, v10, v6, v5}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v11, v5, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v11, ""

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v9, v11, v12, v13}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_b
    goto/16 :goto_9

    :goto_5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid data role: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6
    :try_start_3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid power role: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object v6, v2

    move-wide v11, v14

    goto/16 :goto_1f

    :cond_c
    :try_start_4
    const-string v7, "add-port"

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const v10, 0x1c3ff

    const v11, 0x1842e

    if-eqz v7, :cond_13

    :try_start_5
    array-length v7, v4

    if-ne v7, v8, :cond_13

    aget-object v7, v4, v9

    aget-object v12, v4, v6

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v11, :cond_10

    if-eq v13, v10, :cond_f

    const v9, 0x2f387c

    if-eq v13, v9, :cond_e

    const v9, 0x33af38

    if-eq v13, v9, :cond_d

    goto :goto_7

    :cond_d
    const-string/jumbo v9, "none"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move/from16 v17, v8

    goto :goto_7

    :cond_e
    const-string v8, "dual"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    move/from16 v17, v6

    goto :goto_7

    :cond_f
    const-string/jumbo v8, "ufp"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/16 v17, 0x0

    goto :goto_7

    :cond_10
    const-string v8, "dfp"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    move/from16 v17, v9

    :cond_11
    :goto_7
    packed-switch v17, :pswitch_data_2

    new-instance v8, Ljava/lang/StringBuilder;

    goto :goto_a

    :pswitch_6
    const/4 v6, 0x0

    goto :goto_8

    :pswitch_7
    const/4 v6, 0x3

    goto :goto_8

    :pswitch_8
    const/4 v6, 0x2

    goto :goto_8

    :pswitch_9
    const/4 v6, 0x1

    nop

    :goto_8
    nop

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_12

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v8, v7, v6, v5}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v11, "  "

    invoke-direct {v10, v5, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v10, ""

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_12
    nop

    :goto_9
    move-object v6, v2

    move-wide v11, v14

    goto/16 :goto_1e

    :goto_a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_13
    const-wide/16 v20, 0x0

    :try_start_6
    const-string v7, "connect-port"

    const/16 v19, 0x0

    aget-object v8, v4, v19

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    array-length v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_21

    aget-object v7, v4, v9

    aget-object v8, v4, v6

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v23, v8

    if-eqz v23, :cond_14

    :try_start_7
    aget-object v8, v4, v6

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :cond_14
    :try_start_8
    aget-object v8, v4, v6

    :goto_b
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eq v9, v11, :cond_16

    if-eq v9, v10, :cond_15

    goto :goto_c

    :cond_15
    :try_start_9
    const-string/jumbo v9, "ufp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v8, :cond_17

    const/4 v8, 0x0

    goto :goto_d

    :cond_16
    :try_start_a
    const-string v9, "dfp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v8, :cond_17

    const/4 v8, 0x1

    goto :goto_d

    :cond_17
    :goto_c
    move/from16 v8, v17

    :goto_d
    packed-switch v8, :pswitch_data_3

    move-wide v11, v14

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_19

    :pswitch_a
    const/4 v6, 0x2

    goto :goto_e

    :pswitch_b
    const/4 v6, 0x1

    nop

    :goto_e
    move v8, v6

    const/4 v6, 0x3

    :try_start_c
    aget-object v9, v4, v6

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v22, v9

    if-eqz v22, :cond_18

    :try_start_d
    aget-object v9, v4, v6

    invoke-static {v9}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_f

    :cond_18
    :try_start_e
    aget-object v9, v4, v6

    :goto_f
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eq v10, v12, :cond_1a

    const v11, 0x35de93

    if-eq v10, v11, :cond_19

    goto :goto_10

    :cond_19
    :try_start_f
    const-string/jumbo v10, "sink"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_11

    :cond_1a
    :try_start_10
    const-string/jumbo v10, "source"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v9, :cond_1b

    const/4 v9, 0x0

    goto :goto_11

    :cond_1b
    :goto_10
    move/from16 v9, v17

    :goto_11
    packed-switch v9, :pswitch_data_4

    move-wide v11, v14

    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/16 :goto_18

    :pswitch_c
    const/4 v6, 0x2

    goto :goto_12

    :pswitch_d
    const/4 v6, 0x1

    nop

    :goto_12
    move v10, v6

    move-wide/from16 v11, v20

    :try_start_12
    aget-object v6, v4, v13

    const-string v9, "?"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v18, v6

    if-eqz v18, :cond_1c

    :try_start_13
    aget-object v6, v4, v13

    invoke-static {v6}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_13

    :cond_1c
    :try_start_14
    aget-object v6, v4, v13

    :goto_13
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const v11, -0x4f94e1aa

    if-eq v9, v11, :cond_1e

    const v11, 0x30f5a8

    if-eq v9, v11, :cond_1d

    goto :goto_14

    :cond_1d
    :try_start_15
    const-string v9, "host"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v6, :cond_1f

    const/16 v17, 0x0

    goto :goto_14

    :cond_1e
    :try_start_16
    const-string v9, "device"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v6, :cond_1f

    const/16 v17, 0x1

    :cond_1f
    :goto_14
    packed-switch v17, :pswitch_data_5

    move-wide/from16 v24, v14

    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_17

    :pswitch_e
    const/4 v6, 0x2

    goto :goto_15

    :pswitch_f
    const/4 v6, 0x1

    nop

    :goto_15
    move v12, v6

    const-wide/16 v2, 0x0

    :try_start_18
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_20

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move/from16 v9, v23

    move/from16 v11, v22

    move/from16 v13, v18

    move-wide/from16 v24, v14

    move-object v14, v5

    :try_start_19
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v11, v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v11, ""

    invoke-virtual {v6, v9, v11, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_16

    :catchall_1
    move-exception v0

    move-wide/from16 v11, v24

    goto/16 :goto_1c

    :cond_20
    move-wide/from16 v24, v14

    :goto_16
    move-wide/from16 v11, v24

    goto/16 :goto_1a

    :catchall_2
    move-exception v0

    move-wide v11, v14

    move-object/from16 v6, p1

    goto/16 :goto_1f

    :goto_17
    :try_start_1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-wide/from16 v11, v24

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3
    move-exception v0

    move-wide/from16 v11, v24

    move-object/from16 v6, p1

    goto/16 :goto_1f

    :goto_18
    :try_start_1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid power role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_19
    :try_start_1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_21
    move-wide v11, v14

    move-wide/from16 v2, v20

    :try_start_1d
    const-string v7, "disconnect-port"

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    array-length v7, v4

    if-ne v7, v6, :cond_24

    const/4 v6, 0x1

    aget-object v6, v4, v6

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_22

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    invoke-direct {v9, v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_22
    nop

    :cond_23
    :goto_1a
    move-object/from16 v6, p1

    goto/16 :goto_1e

    :cond_24
    const-string/jumbo v7, "remove-port"

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    array-length v7, v4

    if-ne v7, v6, :cond_26

    const/4 v6, 0x1

    aget-object v6, v4, v6

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_25

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    invoke-direct {v9, v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_25
    goto :goto_1a

    :cond_26
    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_27

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_23

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6, v5}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_1a

    :cond_27
    const-string/jumbo v6, "ports"

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_23

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1a

    :cond_28
    const-string v2, "dump-descriptors"

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_29
    const-string v2, "Dump current USB state or issue command:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  ports"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  disconnect-port <id>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  remove-port <id>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB type C port role switch:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb ports"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB device-only port:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB device descriptors:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a

    :catchall_4
    move-exception v0

    move-wide v11, v14

    move-object v6, v2

    goto/16 :goto_1f

    :cond_2a
    move-wide v11, v14

    :goto_1b
    if-eqz v16, :cond_2b

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/proto/ProtoOutputStream;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object/from16 v6, p1

    :try_start_1e
    invoke-direct {v3, v6}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_1d

    :catchall_5
    move-exception v0

    :goto_1c
    move-object/from16 v6, p1

    goto/16 :goto_1f

    :cond_2b
    move-object/from16 v6, p1

    const-string v2, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v3, v5, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_1d
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_2c

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v7, "device_manager"

    const-wide v8, 0x10b00000001L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_2c
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v7, "host_manager"

    const-wide v8, 0x10b00000002L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_2d
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_2e

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v7, "port_manager"

    const-wide v8, 0x10b00000003L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_2e
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v7, "alsa_manager"

    const-wide v8, 0x10b00000004L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    if-nez v16, :cond_32

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v3, :cond_2f

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v3, v6, v5}, Lcom/android/server/usb/UsbHostRestrictor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_2f
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/usb/UsbMonitorImpl;->dump(Ljava/io/PrintWriter;)V

    :cond_30
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    if-eqz v3, :cond_31

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-virtual {v3, v5}, Lcom/android/server/utils/sysfwutil/DexObserver;->dump(Ljava/io/PrintWriter;)V

    :cond_31
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    if-eqz v3, :cond_32

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v3, v6, v5}, Lcom/android/server/usb/UsbNotificationHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_32
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v7, "settings_manager"

    const-wide v8, 0x10b00000005L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    nop

    :goto_1e
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_6
    move-exception v0

    goto :goto_1f

    :catchall_7
    move-exception v0

    move-object v6, v2

    move-wide v11, v14

    :goto_1f
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCurrentFunctions()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 4

    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getScreenUnlockedFunctions()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportDexRestrict()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "UsbService"

    const-string v1, "UsbService mHostRestrictor is NULL, so return false as a default value"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isUsb30Available()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public isUsb30Enabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    :cond_0
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_1
    const-string v4, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user is not active."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->bRestrictHostAPI:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "UsbService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDevice("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") : HostAPI is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, p1, v5, p2, v6}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    const-string v4, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user is not active."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :goto_2
    return-object v0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public restrictUsbHostInterface(ZLjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v0, :cond_0

    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictUsbHostInterface : change bRestrictHostAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->bRestrictHostAPI:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1, p2}, Lcom/android/server/usb/UsbHostRestrictor;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "UsbService"

    const-string v1, "UsbService mHostRestrictor is NULL, so return false as a default value"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public semGetUsbDebugState()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "UsbService"

    const-string/jumbo v2, "semGetUsbDebugState--, managers are null"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UsbService"

    const-string/jumbo v2, "semGetUsbDebugState--, no permissions"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->semGetUsbDebugState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGrantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbService;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public semSetDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbService;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    return-void
.end method

.method public semSetMode(I)V
    .locals 5

    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetMode++, not imlpemtentd yet mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UsbService"

    const-string/jumbo v1, "semSetMode--, no permissions"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/usb/SemUsbBackend;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/SemUsbBackend;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbDeviceManager;)V

    const-string v1, "UsbService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetMode: backend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    invoke-virtual {v0}, Lcom/android/server/usb/SemUsbBackend;->getCurrentMode()I

    move-result v1

    const-string v2, "UsbService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semSetMode: currentUsbMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/server/usb/SemUsbBackend;->setMode(I)V

    const-string v2, "UsbService"

    const-string/jumbo v3, "semSetMode--"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    const-string v0, "UsbService"

    const-string/jumbo v1, "semSetMode--, managers are null"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public semSetUsbDebug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "UsbService"

    const-string v2, " semSetUsbDebug--, managers are null"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UsbService"

    const-string v2, " semSetUsbDebug--, no permissions"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->semSetUsbDebug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    return-void
.end method

.method public setCurrentFunctions(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 4

    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public setUsb30Mode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "UsbService"

    const-string v1, "!@UsbService:systemReady()"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMonitorImpl;->systemReady()V

    :cond_3
    return-void
.end method
