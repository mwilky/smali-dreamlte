.class Lcom/android/server/desktopmode/HardwareManager;
.super Ljava/lang/Object;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/HardwareManager$DockState;,
        Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sSupportedDockUsbpdIds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

.field private mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field private mConnectedMouse:Landroid/view/InputDevice;

.field private mConnectedPogoKeyboard:Landroid/view/InputDevice;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/desktopmode/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field private mForcedInternalScreenModeEnabled:Z

.field private final mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field private mHandler:Landroid/os/Handler;

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mIsBtMouseDeepSleep:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsMouseConnected:Z

.field private mIsPogoKeyboardConnected:Z

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field private mRawDockState:I

.field private mRawDockUsbpdIds:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private final mUEventHostDeviceObserver:Landroid/os/UEventObserver;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a027"

    const/16 v2, 0x2718

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a029"

    const/16 v2, 0x2714

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a025"

    const/16 v2, 0x2719

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a020"

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04b4:2122"

    const/16 v2, 0x2717

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04b4:f645"

    const/16 v2, 0x2716

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a02a"

    const/16 v2, 0x2715

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a02b"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a02c"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a02d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a02e"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a02f"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a030"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a031"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a032"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a033"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string v1, "04e8:a048"

    const/16 v2, 0x271a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Landroid/os/Looper;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/HardwareManager$1;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/HardwareManager$2;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/HardwareManager$3;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/HardwareManager$4;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/desktopmode/HardwareManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/HardwareManager$5;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVTYPE=usb_interface"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/desktopmode/HardwareManager$6;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/HardwareManager$6;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/HardwareManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/HardwareManager;->updateExternalDisplayStatus(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/HardwareManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/desktopmode/HardwareManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/desktopmode/HardwareManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/HardwareManager;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/HardwareManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/HardwareManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method private checkExternalDisplayConnected()V
    .locals 4

    const-string v0, "/sys/class/dp_sec/dex"

    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$HardwareManager$NhSUc7KgN6diP6o-jnX3J3hbGBE;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$HardwareManager$NhSUc7KgN6diP6o-jnX3J3hbGBE;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private getBatteryChangedIntent()Landroid/content/Intent;
    .locals 6

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getCoverType(Lcom/android/server/desktopmode/State;)I
    .locals 1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private initializeExternalDisplayStatus()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    new-instance v6, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-direct {v6, v5}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    iget-object v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v2, :cond_0

    invoke-virtual {v6}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    move-object v1, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    iput-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v4, v3, v1}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    :cond_2
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initializeExternalDisplayStatus(), mDisplays="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private isMouse(Landroid/view/InputDevice;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v2, p1}, Lcom/samsung/android/vr/GearVrManagerInternal;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static isPogoKeyboard(Landroid/view/InputDevice;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x4e8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result v0

    const v1, 0xa035

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "Tab S3 Book Cover Keyboard"

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$checkExternalDisplayConnected$0(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string v1, "checkExternalDisplayConnected(), Reconnection time out!"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->checkExternalDisplayConnected()V

    return-void
.end method

.method private setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    return-void
.end method

.method private setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADB command received; setForcedInternalScreenMode(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal screen DeX mode is already turned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "on!"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "off!"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v1, "Entering"

    goto :goto_1

    :cond_3
    const-string v1, "Exiting"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " internal screen DeX mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iput-boolean p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setForcedInternalScreenModeEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z

    return-void
.end method

.method private setRawDockState(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDockState(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    return-void
.end method

.method private setRawDockUsbpdIds(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDockUsbpdIds(), usbpdIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized updateDockStatus()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "/sys/class/sec/ccic/state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockState(I)V

    const-string v0, "/sys/class/sec/ccic/usbpd_ids"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->setRawDockUsbpdIds(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x2715

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2711

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2714

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2716

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v3, Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v4}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    :goto_1
    move-object v1, v3

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v1

    const/16 v3, 0x2712

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v1

    if-ne v1, v3, :cond_5

    :cond_4
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$DockState;

    const/16 v3, 0x2713

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-direct {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>()V

    :goto_3
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDockStatus(), new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v4

    if-eq v3, v4, :cond_a

    iput-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3, v1}, Lcom/android/server/desktopmode/IStateManager;->setDockState(Lcom/android/server/desktopmode/HardwareManager$DockState;)V

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->unregister()V

    iput-object v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    goto :goto_4

    :cond_8
    new-instance v3, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    invoke-direct {v3, p0, v4}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$1;)V

    iput-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;

    invoke-virtual {v3}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->register()V

    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "dock_usbpd_ids"

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateExternalDisplayStatus(ZI)V
    .locals 8

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-direct {v2, v1}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/desktopmode/HardwareManager;->setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, v2}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V

    :cond_1
    :goto_0
    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_6

    iget-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v6}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v7

    if-ne v7, v0, :cond_3

    move-object v2, v6

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    iput-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, v2}, Lcom/android/server/desktopmode/IStateManager;->setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->checkExternalDisplayConnected()V

    :cond_6
    :goto_3
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateExternalDisplayStatus(), mDisplays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateInputDeviceStatus()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v2

    move v2, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_4

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/InputDevice;->isExternal()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v7}, Lcom/android/server/desktopmode/HardwareManager;->isMouse(Landroid/view/InputDevice;)Z

    move-result v8

    invoke-static {v7}, Lcom/android/server/desktopmode/HardwareManager;->isPogoKeyboard(Landroid/view/InputDevice;)Z

    move-result v9

    or-int/2addr v2, v8

    or-int/2addr v5, v9

    if-eqz v8, :cond_1

    sget-boolean v10, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connected mouse="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedMouse:Landroid/view/InputDevice;

    :cond_1
    if-eqz v9, :cond_3

    sget-boolean v10, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connected pogoKeyboard="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedPogoKeyboard:Landroid/view/InputDevice;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    if-eq v6, v5, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    iget-boolean v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    if-eqz v7, :cond_8

    iput-boolean v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string v7, "Enter the BT mouse deep sleep routine in updateInputDeviceStatus()"

    invoke-static {v3, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v4, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    :cond_8
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3, v2}, Lcom/android/server/desktopmode/IStateManager;->setMouseConnected(Z)V

    :cond_9
    if-eqz v6, :cond_a

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3, v5}, Lcom/android/server/desktopmode/IStateManager;->setPogoKeyboardConnected(Z)V

    :cond_a
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInputDeviceStatus(), mIsMouseConnected="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsPogoKeyboardConnected="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method


# virtual methods
.method command(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V

    return v2

    :cond_0
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V

    return v2

    :cond_1
    const-string/jumbo v0, "toggle"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/HardwareManager;->setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V

    return v2

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mConnectedDisplay"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mConnectedPogoKeyboard"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedPogoKeyboard:Landroid/view/InputDevice;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mConnectedMouse"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mConnectedMouse:Landroid/view/InputDevice;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDisplays"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockState"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mForcedInternalScreenModeEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mForcedInternalScreenModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsBtMouseDeepSleep"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsExternalDisplayConnected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsMouseConnected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsPogoKeyboardConnected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsPogoKeyboardConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mPreviousConnectedDisplay"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mRawDockState"

    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockState:I

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mRawDockUsbpdIds"

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getBatteryLevel()I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->getBatteryChangedIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string/jumbo v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    return v1
.end method

.method initialize()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatus()Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->initializeExternalDisplayStatus()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatus()V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "dock_usbpd_ids"

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method logConnectedAccessoryInformation(Lcom/android/server/desktopmode/State;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->getCoverType(Lcom/android/server/desktopmode/State;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log extra data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager;->mContext:Landroid/content/Context;

    const-string v2, "LCAI"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setTspPressureDisabled(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/HardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTspPressureDisabled(),  enter= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_force_touch_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "/sys/class/sec/tsp/pressure_enable"

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
