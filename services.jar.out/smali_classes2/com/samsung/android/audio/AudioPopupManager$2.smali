.class Lcom/samsung/android/audio/AudioPopupManager$2;
.super Ljava/lang/Object;
.source "AudioPopupManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/audio/AudioPopupManager;->showPopupWindow(Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTouchX:F

.field private mTouchY:F

.field final synthetic this$0:Lcom/samsung/android/audio/AudioPopupManager;

.field final synthetic val$windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method constructor <init>(Lcom/samsung/android/audio/AudioPopupManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    iput-object p2, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->val$windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->val$windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->x:F

    iget v2, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->val$windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->y:F

    iget v2, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->mTouchY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    invoke-static {v0}, Lcom/samsung/android/audio/AudioPopupManager;->access$200(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->this$0:Lcom/samsung/android/audio/AudioPopupManager;

    invoke-static {v1}, Lcom/samsung/android/audio/AudioPopupManager;->access$100(Lcom/samsung/android/audio/AudioPopupManager;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->val$windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->mTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/audio/AudioPopupManager$2;->mTouchY:F

    nop

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
