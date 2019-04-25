.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelegatingState"
.end annotation


# instance fields
.field public mLastDelegatedDownEventTime:J

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->access$3400(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->mLastDelegatedDownEventTime:J

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3602(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_2
    return-void
.end method
