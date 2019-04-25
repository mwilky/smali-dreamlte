.class Lcom/android/server/audio/AudioService$MultiSoundManager;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSoundManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;
    }
.end annotation


# static fields
.field private static final DEFAULT_VOLUME:I = 0x64


# instance fields
.field private mEnabled:Z

.field private mPinAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeTable:[F

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->makeVolumeTable()V

    return-void
.end method

.method private makeVolumeTable()V
    .locals 7

    const/16 v0, 0x65

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mVolumeTable:[F

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mVolumeTable:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mVolumeTable:[F

    const/16 v1, 0x64

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mVolumeTable:[F

    int-to-double v3, v0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    const-wide/high16 v5, -0x3fec000000000000L    # -5.0

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetByEnableDisable()V
    .locals 7

    const-string v0, "AudioService"

    const-string/jumbo v1, "resetByEnableDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$19200(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioService"

    const-string v2, "RemoteException -registerProcessObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$19200(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AudioService"

    const-string v2, "RemoteException -unregisterProcessObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-nez v4, :cond_2

    const v4, 0x8000

    if-eq v0, v4, :cond_2

    invoke-static {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v4

    if-eq v0, v4, :cond_2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$19400(Lcom/android/server/audio/AudioService;I)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setStateToNative()V

    return-void
.end method

.method private setDeviceToNative(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "multisound_setdevice_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "multisound_setdevice_device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setStateToNative()V
    .locals 4

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Thread.sleep() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "multisound_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AudioService"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->resetByEnableDisable()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMultiSound, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const-string v5, ""

    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$14700(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v3, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v3

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  uid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), device=0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "volume="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Current Default Device: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Pin Device: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getPinDevice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Pin App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getPinDevice()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_AUDIO_MULTI_SOUND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_AUDIO_SUPPORT_D2D="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_D2D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.oneconnect"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "  Smart Things=install"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "  Smart Things=uninstall"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AudioService"

    const-string/jumbo v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->resetByEnableDisable()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->showNotification()V

    return-void
.end method

.method public getAppDevice(I)I
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    const v3, 0x400400e

    and-int v4, v3, v1

    if-eqz v4, :cond_1

    move v0, v1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    nop

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v7, v6, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    iget v7, v6, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0x4000

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    const/16 v0, 0x4000

    goto :goto_2

    :cond_4
    const/high16 v2, 0x4000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    const/high16 v0, 0x4000000

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    and-int/2addr v2, v5

    if-eqz v2, :cond_6

    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_7

    const/16 v0, 0x8

    goto :goto_2

    :cond_7
    const/16 v2, 0x400

    and-int/2addr v2, v5

    if-eqz v2, :cond_8

    const/16 v0, 0x400

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    :goto_2
    monitor-exit v4

    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_4
    return v0

    :cond_b
    return v0
.end method

.method public getAppDevice(IZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getAppVolume(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    const/16 v2, 0x64

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppVolumeFloat(I)F
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mVolumeTable:[F

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v4

    aget v3, v3, v4

    move v2, v3

    :cond_0
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_PREVENT_OVERHEAT_BY_MAX_VOLUME:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$PreventOverheatState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioService$PreventOverheatState;->getLimitedVolumeForOverheat(I)F

    move-result v3

    mul-float/2addr v2, v3

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeviceMultiSoundUsingActually()I
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->isUsingAudioForUid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v1

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    return v1
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-nez v1, :cond_0

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v5

    if-eq v5, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$14700(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v5, v6

    iget-object v8, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    array-length v9, v5

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v5, v10

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_2

    move-object v7, v11

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$19600(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$19600(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v6

    :catch_0
    move-exception v6

    const-string v9, "AudioService"

    const-string/jumbo v10, "not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, ""

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPinDevice()I
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v4

    if-eqz v4, :cond_2

    const v5, 0x8000

    if-eq v4, v5, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public getPinPackageName(I)[Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$14700(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v4

    :catch_0
    move-exception v4

    const-string v5, "AudioService"

    const-string/jumbo v6, "not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    return v0
.end method

.method public removeItem(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeItem, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setDeviceToNative(II)V

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetByAudioServerDied()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "AudioService"

    const-string/jumbo v2, "resetByAudioServerDied"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setDeviceToNative(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setStateToNative()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetPinDevice()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppDevice(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->disable()V

    return-void
.end method

.method public sendBecomingNoisyToPinnedApp(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    invoke-static {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$19400(Lcom/android/server/audio/AudioService;I)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAppDevice(II)V
    .locals 9

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "setAppDevice"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v4

    if-ne v4, p2, :cond_1

    const-string v3, "AudioService"

    const-string/jumbo v4, "same device pin."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    const v4, 0x400400e

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    const/4 v0, 0x2

    :cond_2
    if-eqz p2, :cond_7

    const v4, 0x8000

    if-eq p2, v4, :cond_7

    iget-object v5, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    move-object v2, v8

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getAppDevice(Z)I

    move-result v8

    if-ne v8, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v8

    if-eq p1, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq p2, v0, :cond_5

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$19400(Lcom/android/server/audio/AudioService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const-wide/16 v3, 0xc8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in Thread.sleep() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->setAppDevice(I)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setDeviceToNative(II)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    goto/16 :goto_0

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    move-object v2, v3

    if-nez v2, :cond_8

    new-instance v3, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/16 v4, 0x64

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;-><init>(Lcom/android/server/audio/AudioService$MultiSoundManager;III)V

    move-object v2, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->setAppDevice(I)V

    :goto_3
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setDeviceToNative(II)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v1

    if-eqz v1, :cond_a

    if-ne p2, v0, :cond_a

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->showHeadupNotification(I)V

    :cond_a
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setAppVolume(II)V
    .locals 5

    const/16 v0, 0x64

    if-gt p2, v0, :cond_4

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$19500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-ne p2, v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4, p2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;-><init>(Lcom/android/server/audio/AudioService$MultiSoundManager;III)V

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v0

    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolumeToNative(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    const-string v0, "AudioService"

    const-string v1, "Invalid volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAppVolumeToNative(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appvol_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appvol_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppVolumeFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method
