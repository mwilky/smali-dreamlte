.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;
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
    name = "ViewportDraggingState"
.end annotation


# instance fields
.field mZoomedInBeforeDrag:Z

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->clear()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should have one pointer down."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->clear()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewportDraggingState{mZoomedInBeforeDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
