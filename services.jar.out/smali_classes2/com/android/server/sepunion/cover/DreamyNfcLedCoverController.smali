.class final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;,
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;,
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field static final CMD_START_LED_BACK_COVER_SERVICE_APP:I = -0x2

.field static final CMD_START_LED_COVER_SERVICE_APP:I = -0x1

.field private static final MAX_FACTORY_MODE_ENQUEUE_COMMANDS:I = 0x3

.field private static final MSG_COVER_ATTACH_STATE:I = 0x5

.field private static final MSG_FOTA_IN_PROGRESS_REQUEST:I = 0xc

.field private static final MSG_FOTA_IN_PROGRESS_RESPONSE:I = 0xd

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x9

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x6

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x7

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NOTIFY_AUTH_RESPONSE:I = 0xb

.field private static final MSG_REQUEST_AUTH:I = 0xa

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverAuthCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnquedFactoryCommands:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFotaInProgressCallbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    new-instance v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "touchResponse ledcover"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleNotifyFotaInProgress(Z)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleRequestCoverAuthentication(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleNotifyAuthResponse()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSetFotaInProgress(Z)V

    return-void
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleCoverDetachedLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private handleEventResponse(II)V
    .locals 4

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleEventResponse: type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_0
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: tap right"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapRight()V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: tap middle"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapMid()V

    :cond_2
    goto :goto_1

    :cond_3
    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_2
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: tap left"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapLeft()V

    :cond_4
    goto :goto_2

    :cond_5
    monitor-exit v0

    goto :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :pswitch_3
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: reject"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    :cond_6
    goto :goto_3

    :cond_7
    monitor-exit v0

    goto :goto_5

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :pswitch_4
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: accept"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_8

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    :cond_8
    goto :goto_4

    :cond_9
    monitor-exit v0

    goto :goto_5

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    :goto_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleNotifyAuthResponse()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    iget-object v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleNotifyFotaInProgress(Z)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fota_in_progress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    iget-object v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleRequestCoverAuthentication(J)V
    .locals 0

    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 8

    const/4 v0, 0x5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "send_command_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "send_command_content"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v6, v5, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    invoke-virtual {v5, v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    const/4 v2, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    sget-object v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LedCoverService did not finished initalizing, enqueue command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->notifyPowerButtonPressListeners()V

    return-void
.end method

.method private handleSetFotaInProgress(Z)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fota_in_progress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " Current NFC Callback state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Live callbacks ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyAuthenticationResponse()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    new-instance v9, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    move-object v1, v9

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestCoverAuthentication : duplicated listener handle"

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v10, 0x4

    move-object v4, v2

    move-object v5, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    move-object v1, v2

    invoke-interface {p3, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataToNfcLedCover: command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : command: -1 should not be sent, ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "event_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const-string v1, "lcd_touch_listener_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "lcd_touch_listener_respone"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v1, v3, Landroid/os/Message;->arg1:I

    iput v2, v3, Landroid/os/Message;->arg2:I

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v1, "fota_in_progress"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setFotaInProgress : duplicated listener handle"

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v10, 0x4

    move-object v4, v2

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    move-object v1, v2

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method updateNfcLedCoverAttachStateLocked(ZI)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/16 v0, 0xe

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
