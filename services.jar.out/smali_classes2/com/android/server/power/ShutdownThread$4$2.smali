.class Lcom/android/server/power/ShutdownThread$4$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final longPressHandler:Landroid/os/Handler;

.field mLongPressed:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$4;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$4;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4$2;->this$0:Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/ShutdownThread$4$2$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$4$2$1;-><init>(Lcom/android/server/power/ShutdownThread$4$2;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3400()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2900()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$2402(Z)Z

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2400()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$4$2;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4$2;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v1
.end method
