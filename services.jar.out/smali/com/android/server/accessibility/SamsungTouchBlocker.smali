.class public Lcom/android/server/accessibility/SamsungTouchBlocker;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_PERIOD:F

.field private mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field private mIsBlocking:Z

.field private mIsLastEventDown:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

.field private mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

.field public mTouchBlockingPeriod:F

.field public mTouchBlockingPeriodMilli:J

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SamsungTouchBlocker"

    sput-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->DEFAULT_PERIOD:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchBlocker$1;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mUserId:I

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mUserId:I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->start(Landroid/content/ContentResolver;)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return p1
.end method

.method private offTapIgnore()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    :cond_0
    return-void
.end method

.method private onTapIgnore()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {v0, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setIgnoreView(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setIgnoreView(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {v0, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    return-void
.end method

.method private setXY(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {v0, p1, p2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {v0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    if-eqz v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    nop

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    const-string v4, "Touch Blocker is activated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    goto :goto_1

    :pswitch_5
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    nop

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inject this event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_5
    return-void

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
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
