.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x1


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field mHandler:Landroid/os/Handler;

.field private mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field mLastDown:Landroid/view/MotionEvent;

.field final mMultiTapMaxDistance:I

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mSwipeMinDistance:I

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mMultiTapMaxDistance:I

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-object v0
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->access$4002(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    :goto_0
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-void
.end method

.method private clearLastDownEvent()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearLastDownEvent()V

    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->policyFlags:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4200(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->sendDelayedMotionEvents()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearTapDetectionState()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearDelayedMotionEvents()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "handler MESSAGE_TRANSITION_TO_DELEGATING_STATE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isFingerDown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearDelayedMotionEvents()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3901(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clear()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearLastDownEvent()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
