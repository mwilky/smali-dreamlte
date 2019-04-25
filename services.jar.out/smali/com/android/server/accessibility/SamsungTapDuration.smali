.class public Lcom/android/server/accessibility/SamsungTapDuration;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
    }
.end annotation


# static fields
.field private static final MAX_ARRAY_SIZE:I = 0x4

.field private static final MESSAGE_ON_ACTION_TAP:I = 0x1

.field private static final MULTI_FINGER_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SamsungTapDuration"


# instance fields
.field private final DEFAULT_THRESHOLD:F

.field private final mContext:Landroid/content/Context;

.field private mDownEvent:[Landroid/view/MotionEvent;

.field private mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public final mHandler:Landroid/os/Handler;

.field private mHoldingState:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicyFlags:[I

.field private mRawEvent:[Landroid/view/MotionEvent;

.field private mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

.field public mTapDurationThreshold:F

.field public mTapDurationThresholdMilli:J

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->DEFAULT_THRESHOLD:F

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    new-array v0, v0, [Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDuration$1;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mUserId:I

    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->start(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTapDuration;->createDurationProgress()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungTapDuration;)[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungTapDuration;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungTapDuration;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/accessibility/SamsungTapDuration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    return p1
.end method

.method private clearMotionEvents(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aput-object v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    return-void
.end method

.method private createDurationProgress()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    new-instance v3, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "SamsungTapDuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inject this event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void
.end method

.method private setXY(FFI)V
    .locals 2

    const/4 v0, 0x3

    if-le p3, v0, :cond_0

    const-string v0, "SamsungTapDuration"

    const-string/jumbo v1, "setXY()_pointerId is invalid!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->stop()V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    :cond_2
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_a

    if-lt v2, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iget-boolean v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v5, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v5, v5, v2

    invoke-virtual {v5, v7}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    goto/16 :goto_3

    :pswitch_2
    iget-boolean v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v5, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_4
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, v5, v2

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v5, v5, v2

    invoke-virtual {v5, v6}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    goto/16 :goto_3

    :pswitch_3
    iget-boolean v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v5, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_5
    nop

    :goto_0
    move v5, v7

    if-ge v5, v3, :cond_6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    add-int/lit8 v7, v5, 0x1

    goto :goto_0

    :cond_6
    goto/16 :goto_3

    :pswitch_4
    iget-boolean v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v8, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_7
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string v6, "SamsungTapDuration"

    const-string v8, "Finish checking if this tap is valid "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    move v6, v7

    :goto_1
    if-ge v6, v5, :cond_9

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->stopAnimation()V

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_5
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    const-string v8, "SamsungTapDuration"

    const-string v9, "Start checking if this tap is valid "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, v8, v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    iget-wide v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {v8, v6, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v8, v7

    :goto_2
    if-ge v8, v5, :cond_8

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v9, v9, v8

    iget-wide v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {v9, v10, v11}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setDurationTime(J)V

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->startAnimation()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    nop

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
