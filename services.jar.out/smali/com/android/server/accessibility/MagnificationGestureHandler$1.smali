.class Lcom/android/server/accessibility/MagnificationGestureHandler$1;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v2, "MagnificationGestureHandler"

    const-string v3, "Screen On :: Magnification Gesture started again."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-static {v2, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v3, "MagnificationGestureHandler"

    const-string v4, "Screen Off :: Magnification Gesture don\'t work."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MagnificationGestureHandler"

    const-string/jumbo v4, "screen off - zoom is reset."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreeningState:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreeningState;

    invoke-static {v2, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
