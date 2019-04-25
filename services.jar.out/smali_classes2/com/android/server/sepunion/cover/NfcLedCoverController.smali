.class final Lcom/android/server/sepunion/cover/NfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xa

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final RESPONSE_STATUS_POS:I = 0x2

.field private static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field private static final SYSTEM_EVENT_TOUCH_RESPONSE:I

.field private static final TAG:Ljava/lang/String;

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCoverEventsDisabledForSamsungPay:Z

.field mFactoryTransceiveResponseIntentSent:Z

.field private final mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLedCoverRetryPostTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "send leddata"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "pollTouch ledcover"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "touchResponse ledcover"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "onoff ledcover"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nfc_led_cover_test"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B
    .locals 1

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/NfcLedCoverController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array v2, v0, [B

    aput-byte v1, v2, v1

    move-object p2, v2

    :cond_0
    const/4 v2, 0x5

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v2, v3

    new-array v5, v5, [B

    aput-byte v1, v5, v1

    const/16 v6, -0x5e

    aput-byte v6, v5, v0

    const/4 v0, 0x2

    aput-byte v1, v5, v0

    const/4 v0, 0x3

    aput-byte v1, v5, v0

    const/4 v0, 0x4

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    const/4 v0, 0x5

    const/16 v6, 0x10

    aput-byte v6, v5, v0

    const/4 v0, 0x6

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    const/4 v0, 0x7

    int-to-byte v6, p1

    aput-byte v6, v5, v0

    const/16 v0, 0x8

    array-length v6, p2

    invoke-static {p2, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v4, -0x2

    const/4 v6, -0x1

    aput-byte v6, v5, v1

    aput-byte v6, v5, v0

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte data to send to cover: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v5
.end method

.method private clearOngoingEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    return-void
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private getCallDuration()[B
    .locals 13

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-wide v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const/4 v3, 0x0

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-wide/16 v7, 0x3c

    div-long v9, v1, v7

    const-wide/16 v11, 0x64

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v6, "%02d"

    new-array v9, v5, [Ljava/lang/Object;

    rem-long v7, v1, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v3, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-byte v7, v4, v10

    aput-byte v7, v0, v10

    aget-byte v7, v4, v5

    aput-byte v7, v0, v5

    const/4 v7, 0x2

    aget-byte v8, v6, v10

    aput-byte v8, v0, v7

    const/4 v7, 0x3

    aget-byte v5, v6, v5

    aput-byte v5, v0, v7

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentClockData()[B
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v2, :cond_0

    const-string v11, "%02d%02d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v1, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    rem-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    const/16 v6, 0xc

    :cond_1
    const-string v11, "%2d%02d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v1, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v8, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentClockData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    return-object v8
.end method

.method private getLenByteValue([B)I
    .locals 2

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    array-length v1, p1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v2, :cond_2

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    array-length v0, p2

    if-lez v0, :cond_3

    aget-byte v0, p2, v1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    aget-byte v1, p2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v3

    :pswitch_1
    return v0

    :pswitch_2
    return v4

    :cond_3
    :goto_0
    const/4 v0, -0x1

    return v0

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

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

.method private handleClearOngoingEvent(I)V
    .locals 1

    const v0, 0xfffe

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearOngoingEvent()V

    :cond_2
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private handleEventResponse(II)V
    .locals 4

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

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

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: accept"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Event touch: reject"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    :cond_3
    goto :goto_1

    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_5
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 8

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v0, 0x12

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    if-eq p1, v0, :cond_4

    array-length v3, p3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    aget-byte v5, p3, v2

    const/16 v6, -0x20

    if-eq v5, v6, :cond_0

    if-eq v5, v4, :cond_0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transceive error - unknown error value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v3, 0x1

    nop

    :goto_0
    if-nez v3, :cond_1

    array-length v5, p3

    if-le v5, v1, :cond_1

    aget-byte v5, p3, v1

    const/16 v6, -0x30

    if-ne v5, v6, :cond_1

    array-length v5, p3

    new-array v5, v5, [B

    array-length v6, p3

    invoke-static {p3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v6, -0x2f

    aput-byte v6, v5, v1

    invoke-direct {p0, p1, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v3

    :cond_1
    if-eqz v3, :cond_3

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_3

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeat command "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop result: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    iget v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    :cond_3
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    sget-object v4, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Could not transceive command to cover so turn off led cover"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v4, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Sent done intent, fail transceive"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x4

    const-string v1, "lcd_off_disabled_by_cover"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v5, v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    invoke-virtual {v4, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePollEventTouch(I)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Stop polling touch events"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_1
    sget v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->testCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->testCount:I

    :cond_2
    new-array v0, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    const/16 v3, 0x11

    invoke-direct {p0, v3, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v0

    const/4 v4, 0x0

    :try_start_0
    sget v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5, v0}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v7, "Error sending data to NFC"

    invoke-static {v6, v7, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-lez v5, :cond_6

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->testCount:I

    const/16 v9, 0x13

    if-le v5, v9, :cond_6

    const/4 v5, 0x5

    new-array v4, v5, [B

    aput-byte v2, v4, v1

    aput-byte v2, v4, v2

    const/16 v5, -0x2f

    aput-byte v5, v4, v8

    aput-byte v3, v4, v6

    sget v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    if-ne v3, v8, :cond_4

    aput-byte v1, v4, v7

    goto :goto_1

    :cond_4
    sget v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    if-ne v3, v1, :cond_5

    aput-byte v8, v4, v7

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown test value: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", reject by default"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v8, v4, v7

    :cond_6
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TouchEvent from led cover: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v4, v7

    if-ne v8, v1, :cond_7

    const-string v1, "accept"

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "reject"

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    aget-byte v3, v4, v7

    iput v3, v1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "No touch event from LED cover, keep listening"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v8, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3
    return-void
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

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

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendDataToLedCover : command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    if-eqz p2, :cond_2

    array-length v3, p2

    if-lez v3, :cond_2

    aget-byte v3, p2, v2

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12

    :cond_2
    const v3, 0xfffe

    const/16 v4, 0x12

    if-ne p1, v3, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    const/4 p1, 0x3

    goto/16 :goto_2

    :cond_3
    if-ne p1, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_5

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "NfcLedCover not started, Start wireless charger"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Led cover already off"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_5
    :try_start_2
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Ensuring NFC LED Cover started"

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v5

    move v3, v5

    if-nez v3, :cond_8

    iget v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_7

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Could not start NFC LED Cover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Sent done intent, fail start"

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_8
    :try_start_3
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6, v0}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v6

    move-object v5, v6

    sget-boolean v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    sget-object v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_5
    sget-object v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "Error in trancieve command"

    invoke-static {v7, v8, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing response for command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    invoke-direct {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    sget v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_a

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_a
    :try_start_6
    sget-object v6, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v7, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v7, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v8, "Sent done intent, sucess"

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    :goto_2
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->setOngoingEventIfValid(I[B)V

    const/4 v3, 0x2

    if-eq p1, v3, :cond_e

    const/4 v5, 0x6

    if-eq p1, v5, :cond_f

    const/16 v5, 0xa

    if-eq p1, v5, :cond_d

    if-eq p1, v4, :cond_c

    const/16 v4, 0xe0

    if-eq p1, v4, :cond_f

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_5

    :cond_e
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :cond_f
    sget v4, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_10

    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->testCount:I

    :cond_10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v4

    if-gez v4, :cond_11

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong listener type requested for command:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_11
    :try_start_7
    iget-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput v4, v2, Landroid/os/Message;->arg1:I

    iget-boolean v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v5, :cond_12

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Already polling for touch events"

    invoke-static {v1, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    goto :goto_4

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    :goto_4
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    :goto_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private handleSendPowerKeyToCover()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyPowerButtonPressListeners()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_1

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsLedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". should be off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto/16 :goto_2

    :cond_1
    sget-boolean v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ". should be on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOngoingEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearOngoingEvent()V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iget-object v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private isFinishedTouchReply([B)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    const/16 v3, -0x2f

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    aget-byte v3, p1, v2

    if-eq v3, v0, :cond_0

    aget-byte v2, p1, v2

    if-ne v2, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSingleMissedEvent([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-byte v2, p1, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    nop

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method private isValidCoverStartData([B)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidResponse(I[B)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    array-length v1, p2

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    const/4 v2, 0x3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected response data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    array-length v2, p2

    move v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-byte v4, p2, v1

    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v5, v5, v3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_5

    if-ne v3, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v5, v5

    if-ne v3, v5, :cond_6

    return v6

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method private notifyLedOffListeners(I)V
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "led_off_command"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v5, v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

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

.method private scheduleLedOffTimeout(I[B)V
    .locals 4

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleLedOffTimerout, command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Time update"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Call InProgress duration time update"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq p1, v1, :cond_6

    const/16 v1, 0x9

    const-wide/16 v2, 0xe74

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x11f8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x13ec

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    :goto_1
    return-void

    :cond_7
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method private sendNfcFailIntentForFactoryMode([B)V
    .locals 4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    const/16 v3, -0x7b

    if-ne v2, v3, :cond_2

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private setOngoingEventIfValid(I[B)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    aget-byte v0, p2, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :sswitch_1
    nop

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private startCallInProgressDisplayTimer([B)V
    .locals 9

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Lcom/android/server/sepunion/cover/NfcLedCoverController$1;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :try_start_1
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Error while scheduling TimerTask"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :goto_0
    return-void

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "CallStartTime incorrect"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v1

    sget-object v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "CallStartTime incorrect"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private stopCallInProgressDisplayTimer()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    return-void
.end method

.method private stopLedCover()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop LedCover, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    sget-boolean v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    return-void
.end method

.method private tryStartLedCover()Z
    .locals 6

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "Disable Wireless Charger"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    sget-boolean v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    return v2

    :cond_4
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "NFC LED Cover already started"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " Current NFC Callback state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Live callbacks ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

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

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

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

    const-string v2, ", command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p1, :cond_4

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    new-instance v9, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    move-object v1, v9

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_1
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported touch listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

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

    :cond_2
    const v0, 0xffff

    const/16 v1, 0xf

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_3

    const/16 p1, 0xf

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Time tick: clock not displayed, ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    :cond_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Ignore battery chargin, battery low already shown"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v1, 0xfff0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_7

    if-eqz p2, :cond_b

    array-length v1, p2

    if-lez v1, :cond_b

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    aget-byte v1, p2, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_7
    const/16 v1, 0x13

    const/4 v3, 0x4

    if-ne p1, v1, :cond_8

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_8
    iput v2, v0, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    const-wide/16 v1, 0x1f4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v1, v6

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_9

    const-wide/16 v1, 0x0

    :cond_9
    move-wide v4, v1

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    :goto_1
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "event_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "lcd_touch_listener_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "lcd_touch_listener_respone"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    iput v1, v3, Landroid/os/Message;->arg1:I

    iput v2, v3, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

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
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_0

    const/16 v2, 0xe

    if-ne p2, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v3, v2, :cond_2

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "nfc_led_cover_test"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TEST:I

    return-void
.end method
