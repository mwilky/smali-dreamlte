.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;
.super Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;
.source "TiltColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimationInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->resumeSensor()V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1002(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    return-void
.end method
