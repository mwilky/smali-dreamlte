.class Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;
.super Landroid/os/Handler;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$002(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z

    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overlay Magnifier start!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: spec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    iget-object v0, v0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v0}, Lcom/android/server/accessibility/OverlayMagnifier;->access$400(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
