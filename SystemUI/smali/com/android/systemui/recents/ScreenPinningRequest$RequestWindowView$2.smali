.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->access$300(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->access$300(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->access$300(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v1, v1, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->access$400(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/ScreenPinningRequest;->getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
