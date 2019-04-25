.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SHOW_TOAST:I = 0x3

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeMode:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    new-instance v1, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "WiredAccessoryManager"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/WiredAccessoryManager$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->handleBikeMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private handleBikeMode()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v4, "Earphones is disabled in bike mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v4, "h2w"

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v2, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-nez v2, :cond_3

    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    :cond_3
    return-void
.end method

.method private onSystemReady()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 7

    and-int v0, p2, p1

    and-int v1, p3, p1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    and-int v2, p2, p1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v0, 0x4

    const v1, -0x7ffffff0

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/16 v4, 0x20

    if-ne p1, v4, :cond_3

    const/high16 v0, 0x20000

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    const/16 v0, 0x800

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    if-ne p1, v4, :cond_5

    const/16 v0, 0x1000

    goto :goto_1

    :cond_5
    const/16 v4, 0x10

    if-ne p1, v4, :cond_8

    const/16 v0, 0x400

    :goto_1
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "headsetName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v3, :cond_6

    const-string v3, " connected"

    goto :goto_2

    :cond_6
    const-string v3, " disconnected"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, ""

    invoke-virtual {v3, v0, v2, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, ""

    invoke-virtual {v3, v1, v2, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x3f

    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_1

    and-int v3, v2, v1

    if-eqz v3, :cond_0

    :try_start_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    not-int v3, v2

    and-int/2addr v1, v3

    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

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

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .locals 10

    and-int/lit8 v0, p2, 0x3f

    and-int/lit8 v1, v0, 0x4

    and-int/lit8 v2, v0, 0x8

    and-int/lit8 v3, v0, 0x23

    const/4 v4, 0x1

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " newState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " headsetState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " prev headsetState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v6, v0, :cond_0

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "No state change."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v6, 0x23

    if-ne v3, v6, :cond_1

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "Invalid combination, unsetting h2w flag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_1
    const/4 v6, 0x4

    if-ne v1, v6, :cond_2

    const/16 v6, 0x8

    if-ne v2, v6, :cond_2

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "Invalid combination, unsetting usb flag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "invalid transition, returning ..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-boolean v6, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v6, :cond_4

    if-eqz v3, :cond_6

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "Bike mode is ON. Earphones disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v9, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v6, :cond_5

    if-nez v3, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, "MSG_NEW_DEVICE_STATE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v6, v7, v0, v8, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_0
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 4

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v2, p4

    and-int/2addr v1, v2

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x54

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    nop

    :goto_0
    nop

    const-string/jumbo v2, "h2w"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x24

    or-int/2addr v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
